import chroma, bumpy, fidget, fidget/openglbackend, fidget/opengl/context, vmath

var
  a: Vec2
  s: Segment
s.a.x = 50
s.a.y = 100
s.b.x = 300
s.b.y = 400

proc drawMain() =
  a = mouse.pos

  group "pointA":
    box a.x-10, a.y-10, 20, 20
    cornerRadius 10
    fill "#2ecc71", 0.75

  let color =
    if overlap(a, s):
      parseHtmlColor("#e74c3c")
    else:
      parseHtmlColor("#3498db")

  ctx.line(s.a, s.b, color)

windowFrame = vec2(600, 600)
startFidget(drawMain)