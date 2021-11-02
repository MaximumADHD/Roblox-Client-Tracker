local snapshots = {}

snapshots['getAlignedDiffs lines change preceding and following common 1'] = [[
- delete
+ insert
  common between changes
- prev
+ next]]

snapshots['getAlignedDiffs lines common at end when both current change lines are empty 1'] = [[
- delete
  common at end]]

snapshots['getAlignedDiffs lines common between delete and insert 1'] = [[
- delete
  common between changes
+ insert]]

snapshots['getAlignedDiffs lines common between insert and delete 1'] = [[
+ insert
  common between changes
- delete]]

snapshots['getAlignedDiffs lines common preceding and following change 1'] = [[
  common preceding
- delete
+ insert
  common following]]

snapshots['getAlignedDiffs newline change from space 1'] = [[
- preceding<i> </i>following
+ preceding
+ following]]

snapshots['getAlignedDiffs newline change to space 1'] = [[
- preceding
- following
+ preceding<i> </i>following]]

snapshots['getAlignedDiffs newline delete only 1'] = [[
- preceding
- following
+ precedingfollowing]]

snapshots['getAlignedDiffs newline delete with adjacent change 1'] = [[
- preced<i>ing</i>
- following
+ preced<i>ed</i>following]]

snapshots['getAlignedDiffs newline insert only 1'] = [[
- precedingfollowing
+ preceding
+ following]]

snapshots['getAlignedDiffs newline insert with adjacent changes 1'] = [[
- preced<i>edf</i>ollowing
+ preced<i>ing</i>
+ <i>F</i>ollowing]]

snapshots['getAlignedDiffs strings change at start and delete or insert at end 1'] = [[
- <i>prev</i> change common<i> delete</i>
+ <i>next</i> change common
  unchanged
- <i>expect</i>ed change common
+ <i>receiv</i>ed change common<i> insert</i>]]

snapshots['getAlignedDiffs strings delete or insert at start and change at end 1'] = [[
- common change <i>prev</i>
+ <i>insert </i>common change <i>next</i>
  unchanged
- <i>delete </i>common change th<i>is</i>
+ common change th<i>at</i>]]

snapshots['getAlignedDiffs substrings first common when both current change lines are empty 1'] = [[
+ insert
  first
  middle
- last <i>prev</i>
+ last <i>next</i>]]

snapshots['getAlignedDiffs substrings first common when either current change line is non-empty 1'] = [[
- <i>expected </i>first
+ first

  last]]

snapshots['getAlignedDiffs substrings first delete completes the current line 1'] = [[
- common preceding <i>first</i>
- middle
- <i>last </i>and following
+ common preceding and following]]

snapshots['getAlignedDiffs substrings first insert completes the current line 1'] = [[
- common preceding
+ common preceding<i> first</i>
+ middle
+]]

snapshots['getAlignedDiffs substrings last is empty in delete at end 1'] = [[
- common string preceding <i>prev</i>
-
+ common string preceding <i>next</i>]]

snapshots['getAlignedDiffs substrings last is empty in insert at end 1'] = [[
- common string preceding <i>prev</i>
+ common string preceding <i>next</i>
+]]

snapshots['getAlignedDiffs substrings last is non-empty in common not at end 1'] = [[
  common first
- last <i>expect</i>ed
+ last <i>receiv</i>ed]]

snapshots['getAlignedDiffs substrings middle is empty in delete between common 1'] = [[
- common at start precedes <i>delete</i>
-
- <i>expect</i>ed common at end
+ common at start precedes <i>receiv</i>ed common at end]]

snapshots['getAlignedDiffs substrings middle is empty in insert at start 1'] = [[
- <i>expect</i>ed common at end
+ insert line
+
+ <i>receiv</i>ed common at end]]

snapshots['getAlignedDiffs substrings middle is non-empty in delete at end 1'] = [[
- common at start precedes <i>delete</i>
- non-empty line
- next
+ common at start precedes <i>prev</i>]]

snapshots['getAlignedDiffs substrings middle is non-empty in insert between common 1'] = [[
- common at start precedes <i>delete expect</i>ed
+ common at start precedes <i>insert</i>
+ non-empty
+ <i>receiv</i>ed]]

return snapshots