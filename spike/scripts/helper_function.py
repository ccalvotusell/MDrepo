# helper_function.py

import openai
import os

def initialize_openai(api_key: str):
    """
    Initialize OpenAI with the provided API key.
    
    Parameters:
        api_key (str): Your OpenAI API key.
    """
    openai.api_key = api_key

def get_openai_response(prompt: str, model: str = "gpt-4", max_tokens: int = 100) -> str:
    """
    Get a response from the OpenAI API based on the provided prompt.
    
    Parameters:
        prompt (str): The prompt to send to the OpenAI API.
        model (str): The model to use for the response. Default is "gpt-4".
        max_tokens (int): The maximum number of tokens in the response. Default is 100.
    
    Returns:
        str: The response from the OpenAI API.
    """
    try:
        response = openai.ChatCompletion.create(
            model=model,
            messages=[{"role": "user", "content": prompt}],
            max_tokens=max_tokens,
            temperature=0.7
        )
        return response['choices'][0]['message']['content'].strip()
    except Exception as e:
        print(f"An error occurred: {e}")
        return None

# Example Usage:
# Initialize OpenAI
# initialize_openai("your-api-key")
# response = get_openai_response("Hello, how are you?")
# print(response)
