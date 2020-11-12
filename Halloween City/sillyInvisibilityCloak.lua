--A script to make the player invisible! Well, all but their hats :)
function setTransparency(char, value)
	for _, child in pairs(chr:Get children()) do	
		if child:IsA('Hat') and child:FindFirstChild('Handle') then
				child = child.Handle
		elseif child:IsA('BasePart') then
			child.Transparency = value
		end
			end
local enabled = true
Workspace.TransPart.Touched:connect(function(hit)
	local char = hit.Parent
	if char then
		local head = char:FindFirstChild("Head")
		local face = head:FindFirstChild("face")
		if enabled and head and game.Players:GetPlayerFromCharacter(char) then
			enabled = false
			for t = 0, 1, .1 do
				if face then face.Transparency = t end
				setTransparency(char, t)
				wait(0.1)
			end
			wait(10)
			for t = 1, 0, -.1 do
				if face then face.Transparency = t end
				setTransparency(char, t)
				wait(0.1)
			end
			wait(2)
			enabled = true
		end
	end
end)
