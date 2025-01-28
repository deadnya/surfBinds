local clientSensitivity = 0.8
local yawSpeed = 225 * clientSensitivity
local shiftYawSpeed = 130 * clientSensitivity
local sleepTime = 1

function OnEvent(event, arg)

    OutputLogMessage("event = %s, arg = %s\n", event, arg)
    OutputLogMessage("pressed = %s\n", IsMouseButtonPressed(4))
    
    if event == "MOUSE_BUTTON_PRESSED" and arg == 4 then
        repeat
            if IsModifierPressed("lshift") then
                MoveMouseRelative(-shiftSpeed, 0)
            else
                MoveMouseRelative(-speed, 0)
            end
            Sleep(sleepTime)
        until not IsMouseButtonPressed(4)
    end

    if event == "MOUSE_BUTTON_PRESSED" and arg == 5 then
        repeat
            if IsModifierPressed("lshift") then
                MoveMouseRelative(shiftSpeed, 0)
            else
                MoveMouseRelative(speed, 0)
            end
            Sleep(sleepTime)
        until not IsMouseButtonPressed(5)
    end
end
