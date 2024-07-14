WEBGL = 'webgl'

def setup
  P5.createCanvas(710, 400, WEBGL)
end

def draw
  P5.background(100)

  P5.noStroke()
  P5.fill(50)
  P5.push()
  P5.translate(-275, 175)
  P5.rotateY(1.25)
  P5.rotateX(-0.9)
  P5.box(100)
  P5.pop()

  P5.noFill()
  P5.stroke(255)
  P5.push()
  P5.translate(500, P5.height * 0.35, -200)
  P5.sphere(300)
  P5.pop()
end