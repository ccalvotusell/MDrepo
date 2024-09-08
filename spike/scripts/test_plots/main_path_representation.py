import networkx as nx

# Read the file and parse edges
file_path = 'edge_usage_1000.txt'  # Replace with your .txt file path

edges = []
with open(file_path, 'r') as f:
    for line in f:
        parts = line.strip().split()
        node1 = int(parts[1])
        node2 = int(parts[3][:-1])
        weight = int(parts[4])
        edges.append((node1, node2, weight))

# Create a graph
G = nx.Graph()

# Add edges to the graph with weights
for edge in edges:
    G.add_edge(edge[0], edge[1], weight=edge[2])

# Find the largest connected component (main path)
largest_cc = max(nx.connected_components(G), key=len)
main_path_graph = G.subgraph(largest_cc).copy()

# Extract the edges of the main path
main_path_edges = list(main_path_graph.edges(data='weight'))

# Print or save the edges of the main path
print("Edges in the main path:")
for u, v, w in main_path_edges:
    print(f"Edge {u} -> {v}: {w}")

# Optionally save to a new file
output_file_path = 'main_path_edges_1000.txt'  # Change if needed
with open(output_file_path, 'w') as out_file:
    for u, v, w in main_path_edges:
        out_file.write(f"Edge {u} -> {v}: {w}\n")

