/*
This file was generated by Nickk's TextDraw editor script
Nickk888 is the author of the NTD script
*/

#include <a_samp>
#include <progress2>
//Requires "progress2" include by Southclaws
//Download: https://github.com/Southclaws/progress2/releases

new PlayerText:HUDBG1[MAX_PLAYERS];
new PlayerText:GARIS[MAX_PLAYERS];
new PlayerText:GARIS1[MAX_PLAYERS];
new PlayerText:GARIS2[MAX_PLAYERS];
new PlayerText:GARIS3[MAX_PLAYERS];
new PlayerText:DATEFOOD[MAX_PLAYERS];
new PlayerText:DATEDRINK[MAX_PLAYERS];
new PlayerText:NAMEPLAYER[MAX_PLAYERS];
new PlayerText:MONEYHUD[MAX_PLAYERS];
new PlayerText:WC[MAX_PLAYERS];
new PlayerBar:LAPAR[MAX_PLAYERS];
new PlayerBar:HAUS[MAX_PLAYERS];
new PlayerBar:KENCING[MAX_PLAYERS];

public OnFilterScriptInit()
{
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerConnect(playerid)
{
	HUDBG1[playerid] = CreatePlayerTextDraw(playerid, 589.000000, 361.000000, "_");
	PlayerTextDrawFont(playerid, HUDBG1[playerid], 1);
	PlayerTextDrawLetterSize(playerid, HUDBG1[playerid], 0.579164, 8.799997);
	PlayerTextDrawTextSize(playerid, HUDBG1[playerid], 293.500000, 94.500000);
	PlayerTextDrawSetOutline(playerid, HUDBG1[playerid], 1);
	PlayerTextDrawSetShadow(playerid, HUDBG1[playerid], 0);
	PlayerTextDrawAlignment(playerid, HUDBG1[playerid], 2);
	PlayerTextDrawColor(playerid, HUDBG1[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, HUDBG1[playerid], 255);
	PlayerTextDrawBoxColor(playerid, HUDBG1[playerid], 135);
	PlayerTextDrawUseBox(playerid, HUDBG1[playerid], 1);
	PlayerTextDrawSetProportional(playerid, HUDBG1[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, HUDBG1[playerid], 0);

	GARIS[playerid] = CreatePlayerTextDraw(playerid, 537.000000, 370.000000, "ld_bum:blkdot");
	PlayerTextDrawFont(playerid, GARIS[playerid], 4);
	PlayerTextDrawLetterSize(playerid, GARIS[playerid], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, GARIS[playerid], 103.000000, 1.500000);
	PlayerTextDrawSetOutline(playerid, GARIS[playerid], 1);
	PlayerTextDrawSetShadow(playerid, GARIS[playerid], 0);
	PlayerTextDrawAlignment(playerid, GARIS[playerid], 1);
	PlayerTextDrawColor(playerid, GARIS[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, GARIS[playerid], 255);
	PlayerTextDrawBoxColor(playerid, GARIS[playerid], 50);
	PlayerTextDrawUseBox(playerid, GARIS[playerid], 1);
	PlayerTextDrawSetProportional(playerid, GARIS[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, GARIS[playerid], 0);

	GARIS1[playerid] = CreatePlayerTextDraw(playerid, 564.000000, 370.000000, "ld_bum:blkdot");
	PlayerTextDrawFont(playerid, GARIS1[playerid], 4);
	PlayerTextDrawLetterSize(playerid, GARIS1[playerid], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, GARIS1[playerid], 1.000000, 88.000000);
	PlayerTextDrawSetOutline(playerid, GARIS1[playerid], 1);
	PlayerTextDrawSetShadow(playerid, GARIS1[playerid], 0);
	PlayerTextDrawAlignment(playerid, GARIS1[playerid], 1);
	PlayerTextDrawColor(playerid, GARIS1[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, GARIS1[playerid], 255);
	PlayerTextDrawBoxColor(playerid, GARIS1[playerid], 50);
	PlayerTextDrawUseBox(playerid, GARIS1[playerid], 1);
	PlayerTextDrawSetProportional(playerid, GARIS1[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, GARIS1[playerid], 0);

	GARIS2[playerid] = CreatePlayerTextDraw(playerid, 537.000000, 357.000000, "ld_bum:blkdot");
	PlayerTextDrawFont(playerid, GARIS2[playerid], 4);
	PlayerTextDrawLetterSize(playerid, GARIS2[playerid], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, GARIS2[playerid], 103.000000, 1.000000);
	PlayerTextDrawSetOutline(playerid, GARIS2[playerid], 1);
	PlayerTextDrawSetShadow(playerid, GARIS2[playerid], 0);
	PlayerTextDrawAlignment(playerid, GARIS2[playerid], 1);
	PlayerTextDrawColor(playerid, GARIS2[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, GARIS2[playerid], 255);
	PlayerTextDrawBoxColor(playerid, GARIS2[playerid], 50);
	PlayerTextDrawUseBox(playerid, GARIS2[playerid], 1);
	PlayerTextDrawSetProportional(playerid, GARIS2[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, GARIS2[playerid], 0);

	GARIS3[playerid] = CreatePlayerTextDraw(playerid, 538.000000, 361.000000, "ld_bum:blkdot");
	PlayerTextDrawFont(playerid, GARIS3[playerid], 4);
	PlayerTextDrawLetterSize(playerid, GARIS3[playerid], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, GARIS3[playerid], 1.000000, 94.500000);
	PlayerTextDrawSetOutline(playerid, GARIS3[playerid], 1);
	PlayerTextDrawSetShadow(playerid, GARIS3[playerid], 0);
	PlayerTextDrawAlignment(playerid, GARIS3[playerid], 1);
	PlayerTextDrawColor(playerid, GARIS3[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, GARIS3[playerid], 255);
	PlayerTextDrawBoxColor(playerid, GARIS3[playerid], 50);
	PlayerTextDrawUseBox(playerid, GARIS3[playerid], 1);
	PlayerTextDrawSetProportional(playerid, GARIS3[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, GARIS3[playerid], 0);

	DATEFOOD[playerid] = CreatePlayerTextDraw(playerid, 545.000000, 386.000000, "HUD:radar_datefood");
	PlayerTextDrawFont(playerid, DATEFOOD[playerid], 4);
	PlayerTextDrawLetterSize(playerid, DATEFOOD[playerid], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, DATEFOOD[playerid], 15.500000, 14.500000);
	PlayerTextDrawSetOutline(playerid, DATEFOOD[playerid], 1);
	PlayerTextDrawSetShadow(playerid, DATEFOOD[playerid], 0);
	PlayerTextDrawAlignment(playerid, DATEFOOD[playerid], 1);
	PlayerTextDrawColor(playerid, DATEFOOD[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, DATEFOOD[playerid], 255);
	PlayerTextDrawBoxColor(playerid, DATEFOOD[playerid], 50);
	PlayerTextDrawUseBox(playerid, DATEFOOD[playerid], 1);
	PlayerTextDrawSetProportional(playerid, DATEFOOD[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, DATEFOOD[playerid], 0);

	DATEDRINK[playerid] = CreatePlayerTextDraw(playerid, 545.000000, 405.000000, "HUD:radar_datedrink");
	PlayerTextDrawFont(playerid, DATEDRINK[playerid], 4);
	PlayerTextDrawLetterSize(playerid, DATEDRINK[playerid], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, DATEDRINK[playerid], 15.500000, 14.500000);
	PlayerTextDrawSetOutline(playerid, DATEDRINK[playerid], 1);
	PlayerTextDrawSetShadow(playerid, DATEDRINK[playerid], 0);
	PlayerTextDrawAlignment(playerid, DATEDRINK[playerid], 1);
	PlayerTextDrawColor(playerid, DATEDRINK[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, DATEDRINK[playerid], 255);
	PlayerTextDrawBoxColor(playerid, DATEDRINK[playerid], 50);
	PlayerTextDrawUseBox(playerid, DATEDRINK[playerid], 1);
	PlayerTextDrawSetProportional(playerid, DATEDRINK[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, DATEDRINK[playerid], 0);

	NAMEPLAYER[playerid] = CreatePlayerTextDraw(playerid, 553.000000, 355.000000, "Lessan_Salvader");
	PlayerTextDrawFont(playerid, NAMEPLAYER[playerid], 1);
	PlayerTextDrawLetterSize(playerid, NAMEPLAYER[playerid], 0.237498, 1.649999);
	PlayerTextDrawTextSize(playerid, NAMEPLAYER[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, NAMEPLAYER[playerid], 1);
	PlayerTextDrawSetShadow(playerid, NAMEPLAYER[playerid], 0);
	PlayerTextDrawAlignment(playerid, NAMEPLAYER[playerid], 1);
	PlayerTextDrawColor(playerid, NAMEPLAYER[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, NAMEPLAYER[playerid], 255);
	PlayerTextDrawBoxColor(playerid, NAMEPLAYER[playerid], 50);
	PlayerTextDrawUseBox(playerid, NAMEPLAYER[playerid], 0);
	PlayerTextDrawSetProportional(playerid, NAMEPLAYER[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, NAMEPLAYER[playerid], 0);

	MONEYHUD[playerid] = CreatePlayerTextDraw(playerid, 571.000000, 373.000000, "$999,99.99");
	PlayerTextDrawFont(playerid, MONEYHUD[playerid], 3);
	PlayerTextDrawLetterSize(playerid, MONEYHUD[playerid], 0.287499, 1.149999);
	PlayerTextDrawTextSize(playerid, MONEYHUD[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, MONEYHUD[playerid], 2);
	PlayerTextDrawSetShadow(playerid, MONEYHUD[playerid], 0);
	PlayerTextDrawAlignment(playerid, MONEYHUD[playerid], 1);
	PlayerTextDrawColor(playerid, MONEYHUD[playerid], 1433087999);
	PlayerTextDrawBackgroundColor(playerid, MONEYHUD[playerid], 255);
	PlayerTextDrawBoxColor(playerid, MONEYHUD[playerid], 50);
	PlayerTextDrawUseBox(playerid, MONEYHUD[playerid], 0);
	PlayerTextDrawSetProportional(playerid, MONEYHUD[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, MONEYHUD[playerid], 0);

	WC[playerid] = CreatePlayerTextDraw(playerid, 542.000000, 418.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, WC[playerid], 5);
	PlayerTextDrawLetterSize(playerid, WC[playerid], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, WC[playerid], 34.000000, 22.500000);
	PlayerTextDrawSetOutline(playerid, WC[playerid], 0);
	PlayerTextDrawSetShadow(playerid, WC[playerid], 0);
	PlayerTextDrawAlignment(playerid, WC[playerid], 1);
	PlayerTextDrawColor(playerid, WC[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, WC[playerid], 0);
	PlayerTextDrawBoxColor(playerid, WC[playerid], 0);
	PlayerTextDrawUseBox(playerid, WC[playerid], 0);
	PlayerTextDrawSetProportional(playerid, WC[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, WC[playerid], 0);
	PlayerTextDrawSetPreviewModel(playerid, WC[playerid], 2525);
	PlayerTextDrawSetPreviewRot(playerid, WC[playerid], -10.000000, 0.000000, -75.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid, WC[playerid], 1, 1);

	LAPAR[playerid] = CreatePlayerProgressBar(playerid, 570.000000, 390.000000, 62.000000, 4.500000, 852308735, 100.000000, 0);
	SetPlayerProgressBarValue(playerid, LAPAR[playerid], 50.000000);

	HAUS[playerid] = CreatePlayerProgressBar(playerid, 570.000000, 409.000000, 62.000000, 4.500000, 852308735, 100.000000, 0);
	SetPlayerProgressBarValue(playerid, HAUS[playerid], 50.000000);

	KENCING[playerid] = CreatePlayerProgressBar(playerid, 570.000000, 428.000000, 62.000000, 4.500000, 852308735, 100.000000, 0);
	SetPlayerProgressBarValue(playerid, KENCING[playerid], 50.000000);

	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	PlayerTextDrawDestroy(playerid, HUDBG1[playerid]);
	PlayerTextDrawDestroy(playerid, GARIS[playerid]);
	PlayerTextDrawDestroy(playerid, GARIS1[playerid]);
	PlayerTextDrawDestroy(playerid, GARIS2[playerid]);
	PlayerTextDrawDestroy(playerid, GARIS3[playerid]);
	PlayerTextDrawDestroy(playerid, DATEFOOD[playerid]);
	PlayerTextDrawDestroy(playerid, DATEDRINK[playerid]);
	PlayerTextDrawDestroy(playerid, NAMEPLAYER[playerid]);
	PlayerTextDrawDestroy(playerid, MONEYHUD[playerid]);
	PlayerTextDrawDestroy(playerid, WC[playerid]);
	DestroyPlayerProgressBar(playerid, LAPAR[playerid]);
	DestroyPlayerProgressBar(playerid, HAUS[playerid]);
	DestroyPlayerProgressBar(playerid, KENCING[playerid]);
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if(!strcmp(cmdtext, "/tdtest", true))
	{
		PlayerTextDrawShow(playerid, HUDBG1[playerid]);
		PlayerTextDrawShow(playerid, GARIS[playerid]);
		PlayerTextDrawShow(playerid, GARIS1[playerid]);
		PlayerTextDrawShow(playerid, GARIS2[playerid]);
		PlayerTextDrawShow(playerid, GARIS3[playerid]);
		PlayerTextDrawShow(playerid, DATEFOOD[playerid]);
		PlayerTextDrawShow(playerid, DATEDRINK[playerid]);
		PlayerTextDrawShow(playerid, NAMEPLAYER[playerid]);
		PlayerTextDrawShow(playerid, MONEYHUD[playerid]);
		PlayerTextDrawShow(playerid, WC[playerid]);
		ShowPlayerProgressBar(playerid, LAPAR[playerid]);
		ShowPlayerProgressBar(playerid, HAUS[playerid]);
		ShowPlayerProgressBar(playerid, KENCING[playerid]);
		return 1;
	}
	return 0;
}
