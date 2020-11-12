-- If the player touches the block, health is set to 0.
local trap= script.Parent

local function onTouch(otherPart)
	local character= otherPart.Parent
	local humanoid = character:FindFirstChildWhichIsA("Humanoid")
	
	if humanoid then 
		humanoid.Health = 0
	end
end

trap.Touched:Connect(onTouch)