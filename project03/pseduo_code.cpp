function Dijkstra(Graph, source):
	dist[source] ← 0                      // Initialization
	for each vertex v in Graph:           
			if v ≠ source
				dist[v] ← infinity            // Unknown distance from source to v
                prev[v] ← undefined           // Predecessor of v
            end if
            Q.add_with_priority(v, dist[v])
        end for 
 
        while Q is not empty:               // The main loop
            u ← Q.extract_min()            	// Remove and return best vertex
            for each neighbor v of u:
                alt = dist[u] + length(u, v) 
                if alt < dist[v]
                    dist[v] ← alt
                    prev[v] ← u
                    Q.decrease_priority(v, alt)
                end if
            end for
    	end while
    return prev[]