PIE = 'pie'
CENTER = 'center'

def setup
  createCanvas(400, 400)
end

def draw
  # 色設定
  gray = color(165, 165, 164)
  white = color(255, 255, 255)
  blue = color(26, 90, 164)
  background(white)

  # 輪郭を消す
  noStroke()

  # 外円
  fill(gray)
  arc(200, 200, 300, 300, radians(0), radians(360), PIE)
  fill(blue)
  arc(200, 200, 300, 300, radians(130), radians(300), PIE)

  fill(gray)
  arc(284, 115.5, 150, 90, radians(190), radians(260), PIE)
  fill(blue)
  arc(96, 270.3, 150, 90, radians(-60), radians(80), PIE)
  
  # くり抜き
  fill(white)
  circle(200, 200, 210)

  # 外円から横に伸びる青い部分
  fill(blue)
  rotate(-0.15)
  arc(127, 270, 200, 200, radians(200), radians(290), PIE)
  fill(white)
  arc(127, 270, 132, 132, radians(200), radians(360), PIE)
  arc(190, 231, 125, 125, radians(200), radians(250), PIE)

  # 外円から伸びる四角形
  fill(gray)
  translate(width / 1.25, height / 1.25)
  rotate(radians(55))
  rectMode(CENTER)
  rect(-5, 75, 70, 45)
end
