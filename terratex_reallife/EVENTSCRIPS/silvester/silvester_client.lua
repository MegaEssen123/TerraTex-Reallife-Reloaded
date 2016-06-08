
function startShootRocketEvery30Seconds5Rockets()
	shootRocket()
	setTimer(startShootRocketEvery30Seconds5Rockets,30000,1)
end
addEventHandler("onClientResourceStart",getResourceRootElement(getThisResource()),startShootRocketEvery30Seconds5Rockets)


local RocketTable={
{1414.5000000,-1624.4000244,58.2999992},
{1407.5999756,-1642.5000000,55.7999992},
{1399.4000244,-1669.8000488,42.2999992},
{1401.0999756,-1695.9000244,42.2999992},
{1438.8000488,-1761.4000244,35.5999985},
{1478.0000000,-1754.8000488,35.5999985},
{1511.0000000,-1762.4000244,35.5999985},
{1555.8000488,-1705.6999512,32.5999985},
{1573.4000244,-1690.4000244,32.5999985},
{1570.5999756,-1655.5000000,32.5999985},
{1560.4000244,-1642.5000000,32.5999985},
{1539.3000488,-1609.0000000,31.1000004},
{1518.5000000,-1578.5000000,23.8999996},
{1474.5999756,-1578.4000244,24.7000008},
{1440.5999756,-1581.8000488,24.7000008},
{1497.4000244,-1665.4000244,34.7000008}
}

function shootRocket()
	for theKey, theRocket in ipairs(RocketTable) do
		createProjectile(getLocalPlayer(),19,theRocket[1],theRocket[2],theRocket[3],200,math.random(220,320),math.random(220,320),0,0,0,10)
	end
end








