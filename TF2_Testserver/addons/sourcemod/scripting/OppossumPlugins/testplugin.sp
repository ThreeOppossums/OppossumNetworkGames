#include <sourcemod>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo = {
    name        = "TestPlugin",
    author      = "ThreeOppossums",
    description = "simple testcommand",
    version     = "1.0",
    url         = ""
};

public void OnPluginStart() {
    RegConsoleCmd("sm_test", Command_Test, "Sends a test message to the client");
}

public Action Command_Test(int client, int args) {
    if (client > 0 && IsClientInGame(client)) {
        PrintToChat(client, "[Test] \x04Plugin is running!\x01");
    }
    return Plugin_Handled;
}