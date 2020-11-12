--Script to give the player an awesome jump height!
function jump(target)
	if target.Parent:FindFirstChild('Humanoid') then
		target.Parent.Humanoid.JumpPower = 200
	end
end

script.Parent.Touched:Connect(jump)