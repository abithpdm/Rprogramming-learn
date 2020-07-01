#Breadth-First-search using R
#creating a function for bfs with inputs - whole graph and starting node
bfs <- function(graph,start){
  
  #a queue to manage the the nodes that have yet to be visited
  queue = c(start)
  
  #a boolean array to store whether we visited a node or not 
  visited =rep(FALSE,nrow(graph))
  
  #set the start node as visited
  visited[start]=TRUE
   
  #keeping the distance
  distances=rep(Inf,nrow(graph))
  
  #distance from start node is 0
  distances[start]=0
  
  # While there are nodes left to visit...
  while(length(queue) > 0) {
    cat("Visited nodes: ", visited, "\n")
    cat("Distances: ", distances, "\n")
    node = queue[1] # get...
    queue = queue[-1] # ...and remove next node
    cat("Removing node ", node, " from the queue...", "\n")
    # ...for all neighboring nodes that haven't been visited yet....
    for(i in seq_along(graph[node,])) {
      if(graph[node,i] && !visited[i]){
        # Do whatever you want to do with the node here.
        # Visit it, set the distance and add it to the queue
        visited[i] = TRUE
        distances[i] = distances[node] + 1
        queue = c(queue, i)
        cat("Visiting node ", i, ", setting its distance to ", distances[i], " and adding it to the queue", "\n")
      }
    }
  }
    cat("No more nodes in the queue. Distances: ", distances, "\n")
  return (distances)

  }
  
