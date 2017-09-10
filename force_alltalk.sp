#include <sourcemod>
#include <sdktools>

#pragma newdecls required
#pragma semicolon 1

ConVar sv_alltalk = null;
ConVar sv_deadtalk = null;
ConVar sv_full_alltalk = null;
ConVar sv_talk_enemy_dead = null;
ConVar sv_talk_enemy_living = null;

public Plugin myinfo = 
{
	name = "Force AllTalk",
	author = "Nickelony",
	description = "Enables every 'talk' related CVar.",
	version = "1.0",
	url = "http://steamcommunity.com/id/nickelony/"
};

public void OnPluginStart()
{
	HookEvent("round_start", OnRoundStart, EventHookMode_PostNoCopy);
	
	sv_alltalk = FindConVar("sv_alltalk");
	sv_deadtalk = FindConVar("sv_deadtalk");
	sv_full_alltalk = FindConVar("sv_full_alltalk");
	sv_talk_enemy_dead = FindConVar("sv_talk_enemy_dead");
	sv_talk_enemy_living = FindConVar("sv_talk_enemy_living");
	
	AutoExecConfig();
}

public void OnRoundStart(Event event, const char[] name, bool dontBroadcast)
{
	if(sv_alltalk != null)
	{
		sv_alltalk.BoolValue = true;
	}
	
	if(sv_deadtalk != null)
	{
		sv_deadtalk.BoolValue = true;
	}
	
	if(sv_full_alltalk != null)
	{
		sv_full_alltalk.BoolValue = true;
	}
	
	if(sv_talk_enemy_dead != null)
	{
		sv_talk_enemy_dead.BoolValue = true;
	}
	
	if(sv_talk_enemy_living != null)
	{
		sv_talk_enemy_living.BoolValue = true;
	}
}
