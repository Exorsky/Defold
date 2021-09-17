function init(self)
	local gameWidth = tonumber(sys.get_config("display.width"))
	local gameHeight = tonumber(sys.get_config("display.height"))
	print("gameWidth: " .. tostring(gameWidth) .. " gameHeight: "
	.. tostring(gameHeight))
	
	for i=1, 20000 do
		self.id = tostring(i)
		local x1 = math.random(gameWidth)
		local y1 = math.random(gameHeight)
		local pos = vmath.vector3(x1, y1, 1)
		factory.create("#particlefactory", pos, nil, {}, 1)
		print("Spawning particle: " .. self.id .. " x1: " ..
		tostring(x1) .. " y1: " .. tostring(y1))
	end
end 
