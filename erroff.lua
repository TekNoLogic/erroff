
local lasttime = 0
local o = UIErrorsFrame.AddMessage
function UIErrorsFrame:AddMessage(msg, ...)
	if msg == ERR_ABILITY_COOLDOWN and GetTime() < (lasttime + 1) then return end
	return o(msg, ...)
end

SLASH_ERROFF1 = "/erroff"
function SlashCmdList.ERROFF() lasttime = GetTime() end
