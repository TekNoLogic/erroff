
local lasttime = 0
local o = UIErrorsFrame.AddMessage
local msgs = {[ERR_ITEM_COOLDOWN] = true, [ERR_ABILITY_COOLDOWN] = true, [ERR_SPELL_COOLDOWN] = true}
function UIErrorsFrame:AddMessage(msg, ...)
	if msgs[msg] and GetTime() < (lasttime + 1) then return end
	return o(self, msg, ...)
end

SLASH_ERROFF1 = "/erroff"
function SlashCmdList.ERROFF() lasttime = GetTime() end
