#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pathlib import Path


def clean_yaml(file: Path, skip: int = 5) -> str:
    """Cleans up an Anaconda environment file

    The contents of the file are generated by issuing the following
    command from within an activated Anaconda environment:

        conda env export > environment.yml

    Arguments:
        file {Path} -- Path file object that contains the exported env
        skip {int} -- Number of lines to skip/leave alone at the top
                      of the file

    Returns:
        str -- cleaned up data
    """
    cleaned = ""
    with file.open() as f:
        for n, line in enumerate(f.readlines()):
            if n < skip or "==" in line or "pip:" in line:
                cleaned += line
            elif line.startswith("prefix:"):
                cleaned += "\n"
            elif "=" not in line:
                cleaned += line.rstrip()
            else:
                keep, _ = line.rsplit("=", 1)
                cleaned += f"{keep}\n"
    return cleaned


def save(file: Path, data: str):
    """Saves the data to the file Path object

    Arguments:
        file {Path} -- Path file object to save the data to
        data {str} -- The data to save to the file object
    """
    file.write_text(data)


if __name__ == "__main__":
    file = Path("environment.yml")
    parsed = clean_yaml(file)
    save(file, parsed)
