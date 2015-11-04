local base = piece 'base' 
local cloud = piece 'cloud' 
local rocket = piece 'rocket' 


local count = 0

function Showemit()
  while true do
    EmitSfx( rocket,  1026 )
    Sleep(333)
  end
end

function script.Create()
	Hide (base)
	Hide (rocket)
	Hide (cloud)
	Move( rocket , y_axis, 3.000000, 10000)
	Move( cloud , y_axis, 3000.000000, 1000000)
	Turn( rocket , y_axis, math.deg(288), 100000 )
	Turn( rocket , x_axis, -1.56, 100000)
	WaitForTurn(rocket, x_axis)
	WaitForTurn(rocket, y_axis)
	Sleep (100)
	EmitSfx( cloud,  1025 )
	Sleep (2200)
	EmitSfx( rocket,  1024 )
	Sleep (100)
	while count < 25 do
	    EmitSfx( rocket,  2048 )
	    Sleep(65)
	    count = count + 1
	end
	Sleep (300)
	StartThread(Showemit)	-- for testing
	Show (base)
end

function script.AimWeapon(num, heading, pitch)
	local _, basepos, _ = Spring.GetUnitPosition(unitID)
	if num == 2 then
		Signal( SIG_AIM)
		SetSignalMask( SIG_AIM)
		Turn( head , y_axis, heading , math.rad(200.000000) )
		WaitForTurn(head, y_axis)
		--Spring.Echo("Weapon one position :" .. basepos)
		StartThread(RestoreAfterDelay)
		if basepos > -18 then
			return true
		else
			return false
		end
	elseif num == 1 then
		Signal( SIG_AIM_3)
		SetSignalMask( SIG_AIM_3)
		Turn( head , y_axis, heading , math.rad(60.000000) )
		WaitForTurn(head, y_axis)
		--Spring.Echo("Weapon two position :" .. basepos)
		if basepos < -16 then
			return true
		else
			return false
		end
	
	end
end

function script.AimFromWeapon(num)
	return base
end

function script.QueryWeapon(num)
	return base
end


function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth
	if (severity <= .25) then
		Explode(base, SFX.NONE)
		return 1 -- corpsetype
	elseif (severity <= .5) then
		Explode(base, SFX.NONE)
		return 1 -- corpsetype
	else
		Explode(base, SFX.SHATTER)
		return 2 -- corpsetype
	end
end
