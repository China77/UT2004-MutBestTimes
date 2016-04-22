class BTRecordReplicationInfo extends BTQueryDataReplicationInfo;

var int Completed;
var float AverageDodgeTiming, BestDodgeTiming, WorstDodgeTiming;

replication
{
	reliable if( bNetInitial )
		Completed,
		AverageDodgeTiming, BestDodgeTiming, WorstDodgeTiming;
}

defaultproperties
{
	DataPanelClass=class'BTGUI_RecordQueryDataPanel'
	Completed=1
	AverageDodgeTiming=0.43
	BestDodgeTiming=0.40
	WorstDodgeTiming=0.47
}