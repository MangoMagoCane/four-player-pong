PaddleVert = Class{}

function PaddleVert:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.dy = 0
    self.score = 0
    self.alive = true
end


function PaddleVert:update(dt)
    if self.dy < 0 then
        self.y = math.max(0, self.y + self.dy * dt)
    else
        self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y + self.dy * dt)
    end
end


function PaddleVert:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end