function init(self)
	msg.post(".", "acquire_input_focus") -- <1>
	self.vel = vmath.vector3(math.random(-150,150),
	math.random(-150,150),0) -- <2>
end

function update(self, dt)
	local pos = go.get_position()
	pos = pos + self.vel * dt
	go.set_position(pos)

	if pos.x > tonumber(sys.get_config("display.width")) then
		self.vel = -self.vel
	end

	if pos.x < 0 then
		self.vel = self.vel * -1
	end

	if pos.y > tonumber(sys.get_config("display.height")) then
		self.vel = -self.vel
	end

	if pos.y < 0 then
		self.vel = self.vel * -1
	end
end
