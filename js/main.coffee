width = 400
height = 400

vis = d3.select('#graph').append('svg')
vis.attr 'width', width
vis.attr 'height', height
vis.text('Our graph')

# Add nodes
nodes = [
  {x: 30, y: 50}
  {x: 50, y: 80}
  {x: 20, y: 120}
]

vis.selectAll("circle.nodes")
  .data(nodes)
  .enter()
  .append("svg:circle")
  .attr("cx", (d)-> return d.x)
  .attr("cy", (d)-> return d.y)
  .attr("r", "10px")
  .attr("fill", "black")

links = [
  {source: nodes[0], target: nodes[1]}
  {source: nodes[2], target: nodes[1]}
]

vis.selectAll(".line")
  .data(links)
  .enter()
  .append("line")
  .attr("x1", (d)-> return d.source.x)
  .attr("y1", (d)-> return d.source.y)
  .attr("x2", (d)-> return d.target.x)
  .attr("y2", (d)-> return d.target.y)
  .style("stroke", "rgb(6,120,155)")