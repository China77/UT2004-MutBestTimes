class BTClient_MapVoteMultiColumnListBox extends MapVoteMultiColumnListBox;

// Ugly copy to replace hardoced class.
function LoadList(VotingReplicationInfo LoadVRI)
{
    local int i,g;

    ListArray.Length = LoadVRI.GameConfig.Length;
    for( i=0; i<LoadVRI.GameConfig.Length; i++)
    {
        ListArray[i] = new class'BTClient_MapVoteMultiColumnList';
        ListArray[i].LoadList(LoadVRI,i);
        if( LoadVRI.GameConfig[i].GameClass ~= PlayerOwner().GameReplicationInfo.GameClass )
            g = i;
    }
    ChangeGameType(g);
}

defaultproperties
{
    DefaultListClass="BTClient_MapVoteMultiColumnList"
}