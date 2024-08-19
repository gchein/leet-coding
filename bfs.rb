require 'set'

def bfs(graph, start)
  queue = [start]
  visited = Set.new([start])

  until queue.empty?
    node = queue.shift
    puts "Visiting node: #{node}"

    graph[node].each do |neighbor|
      unless visited.include?(neighbor)
        queue << neighbor
        visited.add(neighbor)
      end
    end
  end
end

# Graph example
graph = {
  "A" => ["B", "C"],
  "B" => ["A", "D", "E"],
  "C" => ["A", "F"],
  "D" => ["B"],
  "E" => ["B", "F"],
  "F" => ["C", "E"]
}

# Start BFS from node "A"
bfs(graph, "A")
