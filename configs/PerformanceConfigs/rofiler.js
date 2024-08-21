//////////////////////////////////////////////////////////////////////////////////////////
// This script is being embedded into MicroProfile captures

document.title = "MicroProfile Capture";

var S = {};
var g_Loader = {};

g_Loader.urlAnchor = window.location.hash;
if (!window.g_Reload && g_Loader.urlAnchor != "") {
	var newScriptSpecified = false;
	var newScriptUrl = "";
	if (g_Loader.urlAnchor == "#local") {
		newScriptSpecified = true;
	} else if (g_Loader.urlAnchor.startsWith("#www=")) {
		newScriptSpecified = true;
		newScriptUrl = g_Loader.urlAnchor.split("&")[0].split("=")[1];
		newScriptUrl = decodeURIComponent(newScriptUrl);
	}
	if (newScriptSpecified) {
		window.g_Reload = true;
		var newViewerUrl = "rofiler.js";
		var newToolsUrl = "rofiler.tools.js";
		if (newScriptUrl.endsWith(".js")) {
			newViewerUrl = newScriptUrl;
			newToolsUrl = "";
		} else if (newScriptUrl != "") {
			newViewerUrl = newScriptUrl + "/" + newViewerUrl;
			newToolsUrl = newScriptUrl + "/" + newToolsUrl;
		}
		var currentScript = document.currentScript;
		var parentElement = currentScript.parentNode;
		parentElement.removeChild(currentScript);
		
		function AddNewScript(url, onloadFunc) {
			var newScript = document.createElement('script');
			newScript.src = url;
			if (onloadFunc != undefined) {
				newScript.onload = onloadFunc;
			}
			parentElement.appendChild(newScript);
		};
		if (newToolsUrl != "") {
			AddNewScript(newToolsUrl, () => {
				AddNewScript(newViewerUrl);
			});
		} else {
			AddNewScript(newViewerUrl);
		}
	}
} else {
	if (window.g_Reload) {
		window.g_wasReloaded = true;
		console.log("Reloading the viewer");
	}
	window.g_Reload = false;
}

g_Loader.styleText = `
/* about css: http://bit.ly/1eMQ42U */
body {margin: 0px;padding: 0px; font: 12px Courier New;background-color:#474747; color:white;overflow:hidden;}
ul {list-style-type: none;margin: 0;padding: 0;}
li{display: inline; float:left;border:5px; position:relative;text-align:center;}
a {
    float:left;
    text-decoration:none;
    display: inline;
    text-align: center;
	padding:5px;
	padding-bottom:0px;
	padding-top:0px;
    color: #FFFFFF;
    background-color: #474747;
	user-select: none;
}
a:hover, a:active{
	background-color: #000000;
}

.highlighted-background {
	background-color: #707070;
}
.highlighted-text {
	font-weight: bold;
    color: #ffcc77;
}
.spinner-container {
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 9999;
	pointer-events: none;
}
.spinner {
	width: 48px;
	height: 48px;
	border-radius: 50%;
	border: 8px solid rgba(0, 0, 0, 0.2);
	border-top: 8px solid #000000;
	animation: spin 1s linear infinite;
	pointer-events: none;
}
@keyframes spin {
	0% {
		transform: rotate(0deg);
	}
	100% {
		transform: rotate(360deg);
	}
}

ul ul {
    position:absolute;
    left:0;
    top:100%;
    margin-left:-999em;
}
li:hover ul {
    margin-left:0;
    margin-right:0;
}
ul li ul{ display:block;float:none;width:100%;}
ul li ul li{ display:block;float:none;width:100%;}
li li a{ display:block;float:none;width:100%;text-align:left;}
li a{ float:none; }
#nav li:hover div {margin-left:0;}
.info {position:absolute;z-index:5;text-align:left;padding:2px;margin-left:-999em;background-color: #313131;}
.helpstart {position:absolute;z-index:5;text-align:left;padding:2px;background-color: #313131;width:300px;display:none}
.root {z-index:1;position:absolute;top:0px;left:0px;}
.filterinput0{z-index:3;position:fixed;bottom:20px;left:25px;background-color: #313131}
.filterinput1{z-index:3;position:fixed;bottom:20px;left:175px;background-color: #313131}
.filterinputTooltip{z-index:2;position:fixed;bottom:5px;left:25px;background-color: #313131}
`;

g_Loader.bodyText = `
<body style="">
<div id='filterinput' style="display: none;">
<div class="filterinput0">Group<br><input type="text" id="filtergroup"></div>
<div class="filterinput1">Timer/Thread<br><input type="text" id="filtertimer"></div>
<div class="filterinputTooltip">Left/Right keys = navigate</div>
</div>
<canvas id="History" height="130" style="background-color:#474747;margin:0px;padding:0px;"></canvas><canvas id="DetailedView" height="200" style="background-color:#474747;margin:0px;padding:0px;" ondrop="DropHandler(event);" ondragover="DragOverHandler(event);"></canvas>
<div id="root" class="root" style="display: none;">
<div class="helpstart" id="helpwindow" style="left:20px;top:20px">
History View:<br>
Click + Drag: Pan View<br>
Right Click + Drag : Zoom on region<br>
Click Frame : Center on frame<br>
<hr>
Main View:<br>
Ctrl + Mouse up/down: Zoom<br>
Mousewheel : Zoom<br>
Right Click + Drag: Select region<br>
Ctrl + Shift + Drag: Select region<br>
Space: Zoom to Selection<br>
Ctrl + Drag: Pan<br>
Click + Drag: Pan<br>
z: Toggle ToolTip<br>
x: Toggle X-Ray view<br>
c: Toggle X-Ray count/sum modes<br>
<hr>
Detailed View:<br>
W: Go To Worst Instance<br>
Left/Right Arrow: Next/Prev Instance<br>
<hr>
Timer Views:<br>
Tab: go to filtering<br>
Esc: Exit &amp; Clear filter
<hr>
<table style="width:100%">
<tr>
<td width="50%" align="left"><a href='javascript:void(0)' onclick="ShowHelp(0, 0);">Close</a></td>
<td width="50%" align="right"><a href='javascript:void(0)' onclick="ShowHelp(0, 1);">Close, Never Show</a></td>
</tr>
</table>
</div>
<div id="eventswindow" style="display:none;">
</div>
<ul id="nav">
<li><a href="javascript:void(0)" onclick="ToggleDebugMode();">?</a>
<div class="info" id="infowindow" style="left:0px;top:1em;width:450px;"></div>
</li>
<li><a id='ModeSubMenuText'>Mode</a>
    <ul id='ModeSubMenu'>
		<li><a href="javascript:void(0)" onclick="SetMode('timers', 0);" id="buttonTimers">Timers</a></li>
		<li><a href="javascript:void(0)" onclick="SetMode('timers', 1);" id="buttonGroups">Groups</a></li> 
		<li><a href="javascript:void(0)" onclick="SetMode('timers', 2);" id="buttonThreads">Threads</a></li>
		<li><a href="javascript:void(0)" onclick="SetMode('detailed', 0);" id="buttonDetailed">Detailed</a></li>
		<li><a href="javascript:void(0)" onclick="SetMode('counters', 0);" id="buttonCounters">Counters</a></li>
	</ul>
</li>
<li><a>Reference</a>
    <ul id='ReferenceSubMenu'>
        <li><a href="javascript:void(0)" onclick="SetReferenceTime('5ms');">5ms</a></li>
        <li><a href="javascript:void(0)" onclick="SetReferenceTime('10ms');">10ms</a></li>
        <li><a href="javascript:void(0)" onclick="SetReferenceTime('15ms');">15ms</a></li>
        <li><a href="javascript:void(0)" onclick="SetReferenceTime('20ms');">20ms</a></li>
        <li><a href="javascript:void(0)" onclick="SetReferenceTime('33ms');">33ms</a></li>
        <li><a href="javascript:void(0)" onclick="SetReferenceTime('50ms');">50ms</a></li>
        <li><a href="javascript:void(0)" onclick="SetReferenceTime('100ms');">100ms</a></li>
        <li><a href="javascript:void(0)" onclick="SetReferenceTime('250ms');">250ms</a></li>
        <li><a href="javascript:void(0)" onclick="SetReferenceTime('500ms');">500ms</a></li>
        <li><a href="javascript:void(0)" onclick="SetReferenceTime('1000ms');">1000ms</a></li>
    </ul>
</li>
<li id="ilThreads"><a>Threads</a>
    <ul id="ThreadSubMenu">
        <li><a href="javascript:void(0)" onclick="ToggleThread();">All</a></li>
        <li><a>---</a></li>
    </ul>
</li>
<li id="ilGroups"><a>Groups</a>
    <ul id="GroupSubMenu">
        <li><a href="javascript:void(0)" onclick="ToggleGroup();">All</a></li>
        <li><a>---</a></li>
    </ul>
</li>
<li id="ilPlugins" style="display: none;"><a class="highlighted-background">X-Ray</a>
    <ul id='PluginMenu'>
    </ul>
</li>
<li id="ilExport"><a class="highlighted-background">Export</a>
    <ul id="ExportSubMenu">
        <li><a href="javascript:void(0)" onclick="ExportSummaryJSON();">Summary to JSON</a></li>
        <li><a href="javascript:void(0)" onclick="ExportMarkersCSV();">Markers to CSV</a></li>
    </ul>
</li>
<li id="ilOptions"><a>Options</a>
    <ul id='OptionsMenu'>
        <li><a href="javascript:void(0)" onclick="ToggleContextSwitch();">Context Switch</a></li>
		<li><a href="javascript:void(0)" onclick="ToggleDisableMerge();">MergeDisable</a></li>
		<li><a href="javascript:void(0)" onclick="ToggleDisableLod();">LodDisable</a></li>
		<li id='GroupColors'><a href="javascript:void(0)" onclick="ToggleGroupColors();">Group Colors</a></li>
        <li id='TimersMeta'><a href="javascript:void(0)" onclick="ToggleTimersMeta();">Meta</a></li>
        <li id='ZeroBasedBars'><a href="javascript:void(0)" onclick="ToggleZeroBasedBars();">0-based Bars</a></li>
        <li id='ShowHelp'><a href="javascript:void(0)" onclick="ShowHelp(1,1);">Help</a></li>
<!--      	<li><a href="javascript:void(0)" onclick="ToggleDebug();">DEBUG</a></li> -->
    </ul>
</li>
<li id="ilReload" title="Re-capture" style="cursor: pointer; display: none;"><a class="highlighted-text">&nbsp;&#8635;&nbsp;</a>
</li>
<li id="ilSave" title="Save to file" style="cursor: pointer; display: none;"><a class="highlighted-text">&nbsp;\u21e9&nbsp;</a>
</li>
</ul>
</div>
<span id="progressDotSample" style="position: absolute; top: 0px; left: 0px; visibility: hidden;">.</span>
<div id="progressDots" style="position: absolute; top: 0px; left: 0px; width: 100%;"></div>
<div id="progressSpinner" class="spinner-container" style="display: none;"><div class="spinner"></div></div>
`;

function InitCssHtml() {
	const styleElId = "rofilerMainStyle"
	var styleElement = document.getElementById(styleElId);
	if (styleElement) {
		styleElement.textContent = g_Loader.styleText;
	} else {
		styleElement = document.createElement("style");
		styleElement.id = styleElId;
		styleElement.textContent = g_Loader.styleText;
		document.head.appendChild(styleElement);
	}

	if (document.body) {
		document.body.innerHTML = g_Loader.bodyText;
	} else {
		var newBody = document.createElement("body");
		newBody.innerHTML = g_Loader.bodyText;
		document.documentElement.appendChild(newBody);
	}
	
	document.addEventListener("DOMContentLoaded", function() {
		var bodyElements = document.getElementsByTagName("body");
		for (var i = 1; i < bodyElements.length; i++) {
			bodyElements[i].remove();
		}
	});
}

function InvertColor(hexTripletColor) {
	var color = hexTripletColor;
	color = color.substring(1); // remove #
	color = parseInt(color, 16); // convert to integer
	var R = ((color >> 16) % 256)/255.0;
	var G = ((color >> 8) % 256)/255.0;
	var B = ((color >> 0) % 256)/255.0;
	var lum = (0.2126*R + 0.7152*G + 0.0722*B);
	if(lum < 0.7)
	{
		return '#ffffff';
	}
	else
	{
		return '#333333';
	}
}
function InvertColorIndex(hexTripletColor) {
	var color = hexTripletColor;
	color = color.substring(1); // remove #
	color = parseInt(color, 16); // convert to integer
	var R = ((color >> 16) % 256)/255.0;
	var G = ((color >> 8) % 256)/255.0;
	var B = ((color >> 0) % 256)/255.0;
	var lum = (0.2126*R + 0.7152*G + 0.0722*B);
	if(lum < 0.7)
	{
		return 0;
	}
	else
	{
		return 1;
	}
}
function MakeGroup(id, name, category, numtimers, isgpu, total, average, max, color)
{
	var group = {"id":id, "name":name, "category":category, "numtimers":numtimers, "isgpu":isgpu, "total": total, "average" : average, "max" : max, "color":color};
	return group;
}

function MakeTimer(id, name, group, color, colordark, average, max, min, exclaverage, exclmax, callaverage, callcount, total, meta, metaagg, metamax)
{
	var timer = {"id":id, "name":name, "namelabel":name.startsWith("$"), "color":color, "colordark":colordark,"timercolor":color, "textcolor":InvertColor(color), "group":group, "average":average, "max":max, "min":min, "exclaverage":exclaverage, "exclmax":exclmax, "callaverage":callaverage, "callcount":callcount, "total":total, "meta":meta, "textcolorindex":InvertColorIndex(color), "metaagg":metaagg, "metamax":metamax, "worst":0, "worststart":0, "worstend":0};
	return timer;
}

function MakeTimes(scale, ts)
{
	for(var i = 0; i < ts.length; ++i)
	{
		ts[i] *= scale;
	}
	return ts;
}

function MakeTimesType(scale, tt, ts)
{
	g_TickToTimeScale = scale;
	for(var i = 0; i < ts.length; ++i)
	{
		if (tt[i] <= 127)
			ts[i] *= scale;
	}
	return ts;
}

function MakeTimesExtra(scale, scaleextra, tt, ts)
{
	for(var i = 0; i < ts.length; ++i)
	{
		ts[i] *= (tt[i] == 4) ? scaleextra : scale;
	}
	return ts;
}

function MakeFrame(id, framestart, frameend, framestartgpu, frameendgpu, ts, tt, ti, tl, paused, incomplete, cpufreq, usedmemorymb, freememorymb, allocmsecs, allocs, freemsecs, frees, cpu_waits_for_gpu, jobs_finished_ms, render_finished_ms, gpu_time_ms)
{
	var frame = {"id":id, "framestart":framestart, "frameend":frameend, "framestartgpu":framestartgpu, "frameendgpu":frameendgpu, "ts":ts, "tt":tt, "ti":ti, "tl":tl, "paused":paused, "incomplete":incomplete, "cpufreq":cpufreq, "usedmemorymb":usedmemorymb, "freememorymb":freememorymb, "allocmsecs":allocmsecs, "allocs":allocs, "freemsecs":freemsecs, "frees":frees, "cpu_waits_for_gpu":cpu_waits_for_gpu, "jobs_finished_ms":jobs_finished_ms, "render_finished_ms":render_finished_ms, "gpu_time_ms":gpu_time_ms};
	return frame;
}

function MakeCounter(id, parent, sibling, firstchild, level, name, value, minvalue, maxvalue, formatted, limit, formattedlimit, format, counterprc, boxprc, historydata)
{
	var historyprcoffset = (minvalue < 0) ? -minvalue : 0;
	var historyprcscale = 1 / (maxvalue + historyprcoffset);

	var historyprc = new Array(historydata.length);
	for(var i = 0; i < historydata.length; ++i)
	{
		historydata[i] += minvalue;
		historyprc[i] = (historydata[i] + historyprcoffset) * historyprcscale;
	}

	var counter = { "id":id, "parent":parent, "sibling":sibling, "firstchild":firstchild, "level": level, "name":name, "value":value, "formatted":formatted, "limit":limit, "formattedlimit":formattedlimit, "format":format, "counterprc":counterprc, "boxprc":boxprc, "historyprc": historyprc, "historydata":historydata, "minvalue":minvalue, "maxvalue":maxvalue};
	return counter;
}

function InitDataVars()
{
	window.DumpHost = undefined;
	window.DumpUtcCaptureTime = undefined;
	window.AggregateInfo = undefined;
	window.PlatformInfo = undefined;
	window.CategoryInfo = undefined;
	window.GroupInfo = undefined;
	window.TimerInfo = undefined;
	
	window.ThreadNames = undefined;
	window.ThreadIds = undefined;
	window.ThreadGpu = undefined;
	window.ThreadClobbered = undefined;
	window.ThreadClobbered = undefined;
	window.ThreadBufferSizes = undefined;
	window.ThreadGroupTimeArray = undefined;
	
	window.MetaNames = undefined;
	window.CounterInfo = undefined;
	window.Frames = undefined;
	
	window.ExtensionList = undefined;
	window.CGlobalLabels = undefined;
	window.CSwitchThreadInOutCpu = undefined;
	window.CSwitchTime = undefined;
	window.CSwitchThreads = undefined;

	window.g_TickToTimeScale = 0;
}

function InitViewerVars()
{
	// Part 1
	window.CanvasDetailedView = document.getElementById('DetailedView');
	window.CanvasHistory = document.getElementById('History');
	window.CanvasDetailedOffscreen = document.createElement('canvas');
	window.FilterInputGroup = document.getElementById('filtergroup');
	window.FilterInputTimer = document.getElementById('filtertimer');
	window.FilterInputGroupString = null;
	window.FilterInputTimerString = null;
	window.FilterInputArray = [FilterInputGroup, FilterInputTimer];
	window.FilterGroup = null;
	window.FilterTimer = null;
	window.g_Msg = '0';

	window.Initialized = 0;
	window.fDetailedOffset = Frames[0].framestart;
	window.fDetailedRange = Frames[0].frameend - fDetailedOffset;
	window.nWidth = CanvasDetailedView.width;
	window.nHeight = CanvasDetailedView.height;
	window.ReferenceTime = 33;
	window.FrameOverflowDetection = 33;window.nHistoryHeightOrig = 130;window.nHistoryHeight = nHistoryHeightOrig;
	window.nOffsetY = 0;
	window.nOffsetBarsX = 0;
	window.nOffsetBarsY = 0;
	window.nOffsetCountersY = 0;
	window.nBarsWidth = 80;
	window.NameWidth = 200;
	window.MouseButtonState = [0,0,0,0,0,0,0,0];
	window.KeyShiftDown = 0;
	window.MouseDragButton = 0;
	window.KeyCtrlDown = 0;
	window.ToolTip = 1; //0: off, 1: default, 2: flipped
	window.DetailedViewMouseX = 0;
	window.DetailedViewMouseY = 0;
	window.HistoryViewMouseX = -1;
	window.HistoryViewMouseY = -1;
	window.MouseHistory = 0;
	window.MouseDetailed = 0;
	window.FontHeight = 10;
	window.FontWidth = 1;
	window.FontAscent = 3; //Set manually
	window.Font = 'Bold ' + FontHeight + 'px Courier New';
	window.FontFlashHeight = 35;
	window.FontFlash = 'Bold ' + FontFlashHeight + 'px Courier New';
	window.BoxHeight = FontHeight + 2;
	window.ThreadsActive = new Object();
	window.ThreadsAllActive = 1;
	window.GroupsActive = new Object();
	window.GroupsAllActive = 1;
	window.nMinWidth = 0.01;//subpixel width
	window.nMinWidthPan = 1.0;//subpixel width when panning
	window.nContextSwitchEnabled = 1;
	window.DisableLod = 0;
	window.DisableMerge = 0;
	window.GroupColors = 0;
	window.nModDown = 0;
	window.g_MSG = 'no';
	window.nDrawCount = 0;
	window.nBackColors = ['#474747', '#313131' ];
	window.nBackColorOffset = '#606060';
	window.CSwitchColors =["#9DD8AF","#D7B6DA","#EAAC76","#DBDA61","#8AD5E1","#8CE48B","#C4D688","#57E5C4"];//generated by http://tools.medialab.sciences-po.fr/iwanthue/index.php
	window.CSwitchHeight = 5;
	window.FRAME_HISTORY_COLOR_CPU = '#ff7f27';
	window.FRAME_HISTORY_COLOR_CPU_RENDER = '#37a0ee';
	window.FRAME_HISTORY_COLOR_GPU = '#ff2f4f';
	window.FRAME_HISTORY_COLOR_EMPTY = '#664a00';
	window.FRAME_HISTORY_COLOR_INCOMPLETE = '#202020';
	window.FRAME_HISTORY_COLOR_WRAPAROUND = '#ff0000'; // these frames are partially clobbered by the ring buffer
	window.FRAME_HISTORY_COLOR_MOUSE_HOVER = '#ffffff';
	window.ZOOM_TIME = 0.5;
	window.AnimationActive = false;
	window.nHoverCSCpu = -1;
	window.nHoverCSCpuNext = -1;
	window.nHoverCSToolTip = null;
	window.nHoverToken = -1;
	window.nHoverFrame = -1;
	window.nHoverTokenIndex = -1;
	window.nHoverTokenLogIndex = -1;
	window.nHoverCounter = 0;
	window.nHoverCounterDelta = 8;
	window.nHoverTokenNext = -1;
	window.nHoverTokenLogIndexNext = -1;
	window.nHoverTokenIndexNext = -1;
	window.nHoverCounter = -1;
	window.nHoverTokenDrawn = -1;
	window.nHideHelp = 1;
	window.fFrameScale = 33.33;
	window.SortColumn = 0;
	window.SortColumnOrderFlip = 0;
	window.SortColumnMouseOver = null;
	window.SortColumnMouseOverNext = null;

	// Part 2
	window.RangeCpu = RangeInit();
	window.RangeGpu = RangeInit();
	window.RangeSelect = RangeInit();

	window.RangeCpuNext = RangeInit();
	window.RangeGpuNext = RangeInit();

	window.RangeCpuHistory = RangeInit();
	window.RangeGpuHistory = RangeInit();

	window.fRangeBegin = 0;
	window.fRangeEnd = -1;
	window.fRangeThreadId = -1;
	window.fRangeThreadIdNext = -1;
	window.fRangeBeginNext = 0;
	window.fRangeEndNext = 0;
	window.fRangeBeginGpuNext = 0;
	window.fRangeEndGpuNext = 0;
	window.fRangeBeginHistory = -1;
	window.fRangeEndHistory = -1;
	window.fRangeBeginHistoryGpu = -1;
	window.fRangeEndHistoryGpu = -1;
	window.fRangeBeginSelect = 0;
	window.fRangeEndSelect = -1;
	window.ThreadY = undefined;

	window.ModeDetailed = 0;
	window.ModeTimers = 1;
	window.ModeCounters = 2;
	window.Mode = ModeDetailed;

	window.DebugDrawQuadCount = 0;
	window.DebugDrawTextCount = 0;
	window.ProfileMode = 0;
	window.ProfileRedraw0 = 0;
	window.ProfileRedraw1 = 0;
	window.ProfileRedraw2 = 0;
	window.ProfileFps = 0;
	window.ProfileFpsAggr = 0;
	window.ProfileFpsCount = 0;
	window.ProfileLastTimeStamp = new Date();

	window.CSwitchCache = {};
	window.CSwitchOnlyThreads = [];
	window.ProfileData = {};
	window.ProfileStackTime = {};
	window.ProfileStackName = {};
	window.Debug = 1;

	window.g_MaxStack = Array();
	window.g_TypeArray;
	window.g_TimeArray;
	window.g_IndexArray;
	window.g_LabelArray;
	window.g_XtraArray; // Events
	window.LodData = new Array();
	window.NumLodSplits = 10;
	window.SplitMin = 100;
	window.SPLIT_LIMIT = 1e20;
	window.DPR = 1;
	window.DetailedRedrawState = {};
	window.OffscreenData;
	window.DetailedFrameCounter = 0;
	window.Invalidate = 0;
	window.GroupOrder = Array();
	window.ThreadOrder = Array();
	window.TimersGroups = 0;
	window.TimersMeta = 1;
	window.ZeroBasedBars = 1;
	window.MetaLengths = Array();
	window.MetaLengthsAvg = Array();
	window.MetaLengthsMax = Array();

	window.ZoomActive = 0;

	window.StrGroup = "Group";
	window.StrThread = "Thread";
	window.StrTimer = "Timer";
	window.StrAverage = "Average";
	window.StrMax = "Max";
	window.StrTotal = "Total";
	window.StrMin = "Min";
	window.StrCallAverage = "Call Average";
	window.StrCount = "Count";
	window.StrExclAverage = "Excl Average";
	window.StrExclMax = "Excl Max";
	
	// Part 3
	window.IsMac = navigator.platform.indexOf("Mac") === 0;
	window.IsHtmlSavable = !window.g_wasReloaded && (GetHtmlSource(true) != null);
	window.MaxStackDepthToVisualize = 50;
}

function RangeInit()
{
	return {"Begin":-1, "End":-1, "YBegin":-1, "YEnd":-1, "Thread": -1 , "Index": -1};
}
function RangeValid(Range)
{
	return Range.Begin < Range.End;
}
function RangeCopy(Dst, Src)
{
	Dst.Begin = Src.Begin;
	Dst.End = Src.End;
	Dst.YBegin = Src.YBegin;
	Dst.YEnd = Src.YEnd;
	Dst.Thread = Src.Thread;
}

function ProfileModeClear()
{
	if(ProfileMode)
	{
		ProfileData = new Object();
		ProfileStackTime = new Array();
		ProfileStackName = new Array();
	}
}
function ProfileEnter(Name)
{
	if(ProfileMode)
	{
		ProfileStackTime.push(new Date());
		ProfileStackName.push(Name);
	}
}
function ProfileLeave()
{
	if(ProfileMode)
	{
		var Time = new Date();
		var Delta = Time - ProfileStackTime.pop();
		var Name = ProfileStackName.pop();
		var Obj = ProfileData[Name];
		if(!Obj)
		{
			Obj = new Object();
			Obj.Count = 0;
			Obj.Name = Name;
			Obj.Time = 0;
			ProfileData[Name] = Obj;
		}
		Obj.Time += Delta;
		Obj.Count += 1;
	}
}

function ProfilePlot(s)
{
	if(ProfileMode)
	{
		var A = ProfileData.Plot;
		if(!A)
		{
			ProfileData.Plot = Array();
			A = ProfileData.Plot;
		}
		if(A.length<10)
		{
			A.push(s);
		}
	}
}
function ProfileModeDump()
{
	for(var idx in ProfileData)
	{
		var Timer = ProfileData[idx];
		console.log(Timer.Name + " " + Timer.Time + "ms " + Timer.Count);
	}

}
function ProfileModeDraw(Canvas)
{
	if(ProfileMode)
	{
		var StringArray = [];
		for(var idx in ProfileData)
		{
			if(idx == "Plot")
				continue;
			var Timer = ProfileData[idx];
			StringArray.push(Timer.Name);
			StringArray.push(Timer.Time + "ms");
			StringArray.push("#");
			StringArray.push("" + Timer.Count);
		}
		StringArray.push("debug");
		StringArray.push(Debug);
		var Time = new Date();
		var Delta = Time - ProfileLastTimeStamp;
		ProfileLastTimeStamp = Time;
		StringArray.push("Frame Delta");
		StringArray.push(Delta + "ms");
		if(ProfileMode == 2)
		{
			ProfileFpsAggr += Delta;
			ProfileFpsCount ++ ;
			var AggrFrames = 10;
			if(ProfileFpsCount == AggrFrames)
			{
				ProfileFps = 1000 / (ProfileFpsAggr / AggrFrames);
				ProfileFpsAggr = 0;
				ProfileFpsCount = 0;
			}
			StringArray.push("FPS");
			StringArray.push("" + ProfileFps.toFixed(2));
		}
		StringArray.push("ProfileRedraw0");
		StringArray.push("" + ProfileRedraw0);
		StringArray.push("ProfileRedraw1");
		StringArray.push("" + ProfileRedraw1);
		StringArray.push("ProfileRedraw2");
		StringArray.push("" + ProfileRedraw2);
		ProfileRedraw0 = 0;
		ProfileRedraw1 = 0;
		ProfileRedraw2 = 0;


		for(var i = 0; i < ProfileData.Plot; ++i)
		{
			StringArray.push("");
			StringArray.push(ProfileData.Plot[i]);
		}
		ProfileData.Plot = Array();
		DrawToolTip(StringArray, Canvas, 0, 200);
	}
}

function ToggleDebugMode()
{
	ProfileMode = (ProfileMode+1)%4;
	console.log('Toggle Debug Mode ' + ProfileMode);
}

function DetailedTotal()
{
	var Total = 0;
	for(var i = 0; i < Frames.length; i++)
	{
		var frfr = Frames[i];
		Total += frfr.frameend - frfr.framestart;
	}
	return Total;
}

//if timestamps are more than 33ms after current frame, we assume buffer has wrapped.
function OverflowAllowance(threadIdx, frame)
{
	return (ThreadGpu[threadIdx] ? frame.frameendgpu : frame.frameend) + FrameOverflowDetection;
}

function InitFrameInfo()
{

	AggregateInfo.EmptyFrames = Array(Frames.length);
	emptyFrames = 0;
	for(var i = 0; i < Frames.length; i++)
	{
		var clobbered = false;
		var empty     = true;
		var frame     = Frames[i];
		if(frame) 
		{
			typeArray = frame.tt;
			if(typeArray) 
			{
				for(var threadIdx = 0; threadIdx < typeArray.length; ++threadIdx) 
				{
					if(typeArray[threadIdx] && typeArray[threadIdx].length > 0) 
					{
						empty = false;
						var ts = frame.ts[threadIdx];
						var ti = frame.ti[threadIdx];
						var tt = frame.tt[threadIdx];
						var count = ts.length;
						var frameOverflow  = OverflowAllowance(threadIdx, frame);
						for(j = 0; j < count; j++)
						{
							var type = tt[j];

							if(type == 1 || type == 0) //enter or leave
							{
								var time = ts[j] | 0; // Convert to signed
								// This frame has ring buffer wrap around data in it
								if(time >= frameOverflow)
								{
									clobbered = true;
									if (ThreadClobbered.length > 0)
										ThreadClobbered[threadIdx] = 1;
									break;
								}
							}
						}
					}
				}
			}
		}
		
		if(empty)
		{
			AggregateInfo.EmptyFrames[i] = 1;
			emptyFrames += 1; // empty
		}
		else 
		{
			if(clobbered)
			{
				emptyFrames += 1; // considered invalid or empty
				AggregateInfo.EmptyFrames[i] = 2; // clobbered.
			}
			else
			{
				AggregateInfo.EmptyFrames[i] = 0;
			}
		}
	}
	AggregateInfo.EmptyFrameCount = emptyFrames;
	AggregateInfo.TotalFrames = function () {
		return (Frames.length - AggregateInfo.EmptyFrameCount);
	}
	var div = document.getElementById('infowindow');
	div.innerHTML = PlatformInfo;
}
function InitGroups()
{
	for(groupid in GroupInfo)
	{
		var TimerArray = Array();
		for(timerid in TimerInfo)
		{
			if(TimerInfo[timerid].group == groupid)
			{
				TimerArray.push(timerid);
			}
		}
		GroupInfo[groupid].TimerArray = TimerArray;
	}
}

function InitThreadMenu()
{
	var ThreadNamesCommon = Array();
	var CommonNameIndices = Array();
	for (var idx = 0; idx < ThreadNames.length - 1; ++idx)
	{
		var threadName = ThreadNames[idx];
		if (!ThreadNamesCommon.includes(threadName))
		{
			if (ThreadNames.includes(threadName, idx + 1))
			{
				ThreadNamesCommon.push(threadName);
				CommonNameIndices.push(0);
			}
		}
	}
	for (var idx = 0; idx < ThreadNames.length; ++idx)
	{
		var threadName = ThreadNames[idx];
		var commonIndex = ThreadNamesCommon.indexOf(threadName);
		if (commonIndex >= 0)
		{
			threadName += CommonNameIndices[commonIndex];
			ThreadNames[idx] = threadName;
			CommonNameIndices[commonIndex]++;
		}
	}
	var ulThreadMenu = document.getElementById('ThreadSubMenu');
	var MaxLen = 7;
	ThreadOrder = CreateOrderArray(ThreadNames, function(a){return a;});
	for(var idx in ThreadOrder)
	{
		var name = ThreadNames[ThreadOrder[idx]];
		var li = document.createElement('li');
		if(name.length > MaxLen)
		{
			MaxLen = name.length;
		}
		li.innerText = name;
		var asText = li.innerHTML;
		var html = '<a href="javascript:void(0)" onclick="ToggleThread(\'' + name + '\');">' + asText + '</a>';
		li.innerHTML = html;
		ulThreadMenu.appendChild(li);
	}
	var LenStr = (5+(1+MaxLen) * (1+FontWidth)) + 'px';
	var Lis = ulThreadMenu.getElementsByTagName('li');
	for(var i = 0; i < Lis.length; ++i)
	{
		Lis[i].style['width'] = LenStr;
	}
}

function UpdateThreadMenu()
{
	var ulThreadMenu = document.getElementById('ThreadSubMenu');
	var as = ulThreadMenu.getElementsByTagName('a');
	for(var i = 0; i < as.length; ++i)
	{
		var elem = as[i];
		var inner = elem.innerText;
		var bActive = false;
		if(i < 2)
		{
			if(inner == 'All')
			{
				bActive = ThreadsAllActive;
			}
		}
		else
		{
			bActive = ThreadsActive[inner];
		}
		if(bActive)
		{
			elem.style['text-decoration'] = 'underline';
		}
		else
		{
			elem.style['text-decoration'] = 'none';
		}
	}
}

function ToggleThread(ThreadName)
{
	if(ThreadName)
	{
		if(ThreadsActive[ThreadName])
		{
			ThreadsActive[ThreadName] = false;
		}
		else
		{
			ThreadsActive[ThreadName] = true;
		}
	}
	else
	{
		if(ThreadsAllActive)
		{
			ThreadsAllActive = 0;
		}
		else
		{
			ThreadsAllActive = 1;
		}
	}
	Invalidate = 0;
	UpdateThreadMenu();
	WriteCookie();
	Draw(1);

}

function CreateOrderArray(Source, NameFunc)
{
	var Temp = Array(Source.length);
	for(var i = 0; i < Source.length; ++i)
	{
		Temp[i] = {};
		Temp[i].index = i;
		Temp[i].namezz = NameFunc(Source[i]).toLowerCase();
	}
	Temp.sort(function(l, r)
	{ 
		if(r.namezz<l.namezz)
			{return 1;}
		if(l.namezz<r.namezz)
			{return -1;} 
		return 0;
	} );
	var OrderArray = Array(Source.length);
	for(var i = 0; i < Source.length; ++i)
	{
		OrderArray[i] = Temp[i].index;
	}
	return OrderArray;
}


function InitGroupMenu()
{
	var ulGroupMenu = document.getElementById('GroupSubMenu');
	var MaxLen = 7;
	var MenuArray = Array();
	for(var i = 0; i < GroupInfo.length; ++i)
	{
		var x = {};
		x.IsCategory = 0;
		x.category = GroupInfo[i].category;
		x.name = GroupInfo[i].name;
		x.index = i;
		MenuArray.push(x);
	}
	for(var i = 0; i < CategoryInfo.length; ++i)
	{
		var x = {};
		x.IsCategory = 1;
		x.category = i;
		x.name = CategoryInfo[i];
		x.index = i;
		MenuArray.push(x);
	}
	var OrderFunction = function(a){ return a.category + "__" + a.name; };
	var OrderFunctionMenu = function(a){ return a.IsCategory ? (a.category + '') : (a.category + "__" + a.name); };
	GroupOrder = CreateOrderArray(GroupInfo, OrderFunction);
	var MenuOrder = CreateOrderArray(MenuArray, OrderFunctionMenu);

	for(var idx in MenuOrder)
	{
		var MenuItem = MenuArray[MenuOrder[idx]];
		var name = MenuItem.name;
		var li = document.createElement('li');
		if(name.length > MaxLen)
		{
			MaxLen = name.length;
		}
		var jsfunc = '';
		if(MenuItem.IsCategory)
		{				
			li.innerText = '[' + name + ']';
			jsfunc = "ToggleCategory";
		}
		else
		{
			li.innerText = name;
			jsfunc = "ToggleGroup";
		}
		var asText = li.innerHTML;
		var html = '<a href="javascript:void(0)" onclick="' + jsfunc + '(\'' + name + '\');">' + asText + '</a>';
		li.innerHTML = html;
		ulGroupMenu.appendChild(li);
	}
	var LenStr = (5+(1+MaxLen) * FontWidth) + 'px';
	var Lis = ulGroupMenu.getElementsByTagName('li');
	for(var i = 0; i < Lis.length; ++i)
	{
		Lis[i].style['width'] = LenStr;
	}
	UpdateGroupMenu();
}

function UpdateGroupMenu()
{
	var ulThreadMenu = document.getElementById('GroupSubMenu');
	var as = ulThreadMenu.getElementsByTagName('a');
	for(var i = 0; i < as.length; ++i)
	{
		var elem = as[i];
		var inner = elem.innerText;
		var bActive = false;
		if(i < 2)
		{
			if(inner == 'All')
			{
				bActive = GroupsAllActive;
			}
		}
		else
		{
			var CategoryString = inner.length>2 ? inner.substring(1, inner.length-2) : "";
			var CategoryIdx = CategoryIndex(CategoryString);
			if(inner[0] == '[' && inner[inner.length-1] == ']' && CategoryIdx >= 0)
			{
				bActive = IsCategoryActive(CategoryIdx);
			}
			else
			{
				bActive = GroupsActive[inner];
			}
		}
		if(bActive)
		{
			elem.style['text-decoration'] = 'underline';
		}
		else
		{
			elem.style['text-decoration'] = 'none';
		}
	}
}
function CategoryIndex(CategoryName)
{
	for(var i = 0; i < CategoryInfo.length; ++i)
	{
		if(CategoryInfo[i] == CategoryName)
		{
			return i;
		}
	}
	return -1;
}
function IsCategoryActive(CategoryIdx)
{
	for(var i = 0; i < GroupInfo.length; ++i)
	{
		if(GroupInfo[i].category == CategoryIdx)
		{
			var Name = GroupInfo[i].name;
			if(!GroupsActive[Name])
			{
				return false;
			}
		}
	}
	return true;

}
function ToggleCategory(CategoryName)
{
	var CategoryIdx = CategoryIndex(CategoryName);
	if(CategoryIdx < 0)
		return;
	var CategoryActive = IsCategoryActive(CategoryIdx);
	for(var i = 0; i < GroupInfo.length; ++i)
	{
		if(GroupInfo[i].category == CategoryIdx)
		{
			var Name = GroupInfo[i].name;
			if(CategoryActive)
			{
				GroupsActive[Name] = false;
			}
			else
			{
				GroupsActive[Name] = true;
			}
		}
	}
	UpdateGroupMenu();
	WriteCookie();
	RequestRedraw();
}

function ToggleGroup(GroupName)
{
	if(GroupName)
	{
		if(GroupsActive[GroupName])
		{
			GroupsActive[GroupName] = false;
		}
		else
		{
			GroupsActive[GroupName] = true;
		}
	}
	else
	{
		if(GroupsAllActive)
		{
			GroupsAllActive = 0;
		}
		else
		{
			GroupsAllActive = 1;
		}
	}
	UpdateGroupMenu();
	WriteCookie();
	RequestRedraw();
}
function UpdateGroupColors()
{
	for(var i = 0; i < TimerInfo.length; ++i)
	{
		if(GroupColors)
		{
			TimerInfo[i].color = GroupInfo[TimerInfo[i].group].color;
		}
		else
		{
			TimerInfo[i].color = TimerInfo[i].timercolor;
		}
		TimerInfo[i].textcolorindex = InvertColorIndex(TimerInfo[i].color);
	}
}

function ToggleGroupColors()
{
	GroupColors = !GroupColors;
	UpdateGroupColors();
	UpdateOptionsMenu();
	WriteCookie();
	RequestRedraw();
}

function UpdateOptionsMenu()
{
	var ulTimersMeta = document.getElementById('TimersMeta');
	ulTimersMeta.style['text-decoration'] = TimersMeta ? 'underline' : 'none';
	var ulGroupColors = document.getElementById('GroupColors');
	ulGroupColors.style['text-decoration'] = GroupColors ? 'underline' : 'none';
	var ulZeroBasedBars = document.getElementById('ZeroBasedBars');
	ulZeroBasedBars.style['text-decoration'] = ZeroBasedBars ? 'underline' : 'none';
}

function ToggleTimersMeta()
{
	TimersMeta = TimersMeta ? 0 : 1;
	WriteCookie();
	UpdateOptionsMenu();
	RequestRedraw();
}

function ToggleZeroBasedBars()
{
	ZeroBasedBars = ZeroBasedBars ? 0 : 1;
	WriteCookie();
	UpdateOptionsMenu();
	RequestRedraw();
}

function getMedian(arr)
{
    arr.sort();
    var middle = arr[Math.floor(arr.length / 2)];
    return middle;
}

function getStandardDeviation (array)
{
  const n = array.length;
  mean = array.reduce((a, b) => a + b) / n;
  deviation = Math.sqrt(array.map(x => Math.pow(x - mean, 2)).reduce((a, b) => a + b) / n);
  return [mean, deviation];
}

function ExportSummaryJSON()
{
	if (Frames.length == 0)
	{
        console.log("No frames");
        return;    
    }

    var resultingJson = {}

    var numFramesBoundBySim = 0;
    var numFramesBoundByRenderingThread = 0;
    var numFramesBoundByGpu = 0;
    var numFrames = 0;

    var cpuTimeArray = [];
    var gpuTimeArray = [];
    var gpuTimeDeviceArray = [];

	for (var i = 0; i < Frames.length; i++)
	{
		if (Frames[i].paused)
        {
			continue;
        }
        numFrames = numFrames + 1;

        var cpuWaitsForGpu = Frames[i].cpu_waits_for_gpu;
        var cpuTimeIncl = Frames[i].frameend - Frames[i].framestart;
        var gpuTime = Frames[i].frameendgpu - Frames[i].framestartgpu;
        var gpuTimeDevice = Frames[i].gpu_time_ms;
        var waitForRenderingThread = Frames[i].render_finished_ms - Frames[i].jobs_finished_ms;

        if(cpuWaitsForGpu > 2.5)
        {
            numFramesBoundByGpu = numFramesBoundByGpu + 1;
        }
        else if(waitForRenderingThread > 0)
        {
            numFramesBoundByRenderingThread = numFramesBoundByRenderingThread + 1;
        } else
        {
            numFramesBoundBySim = numFramesBoundBySim + 1;
        }

        cpuTimeArray.push(cpuTimeIncl);
        gpuTimeArray.push(gpuTime);
        gpuTimeDeviceArray.push(gpuTimeDevice);
	}

    if (numFrames == 0)
    {
        console.log("No active frames");
        return;
    }

    const cpuTimeMedian = getMedian(cpuTimeArray);
    const gpuTimeMedian = getMedian(gpuTimeArray);
    const gpuTimeDeviceMedian = getMedian(gpuTimeDeviceArray);

    const [cpuTimeMean, cpuTimeDeviation] = getStandardDeviation(cpuTimeArray);
    const [gpuTimeMean, gpuTimeDeviation] = getStandardDeviation(gpuTimeArray);
    const [gpuTimeDeviceMean, gpuTimeDeviceDeviation] = getStandardDeviation(gpuTimeDeviceArray);

    resultingJson["num_frames"] = numFrames;
    resultingJson["num_frames_bound_by_sim"] = numFramesBoundBySim;
    resultingJson["num_frames_bound_by_rendering_thread"] = numFramesBoundByRenderingThread;
    resultingJson["num_frames_bound_by_gpu"] = numFramesBoundByGpu;

    resultingJson["cpu_time_median"] = cpuTimeMedian;
    resultingJson["gpu_time_median"] = gpuTimeMedian;
    resultingJson["gpu_time_ext_median"] = gpuTimeDeviceMedian;

    resultingJson["cpu_time_mean"] = cpuTimeMean;
    resultingJson["gpu_time_mean"] = gpuTimeMean;
    resultingJson["gpu_time_ext_mean"] = gpuTimeDeviceMean;

    resultingJson["cpu_time_stddev"] = cpuTimeDeviation;
    resultingJson["gpu_time_stddev"] = gpuTimeDeviation;
    resultingJson["gpu_time_ext_stddev"] = gpuTimeDeviceDeviation;

    var debugPrint = 1;
    if (debugPrint)
    {
        console.log("numFrames : " + numFrames);
        console.log("numFramesBoundBySim : " + numFramesBoundBySim);
        console.log("numFramesBoundByRenderingThread : " + numFramesBoundByRenderingThread);
        console.log("numFramesBoundByGpu : " + numFramesBoundByGpu);

        console.log("cpuTimeMedian : " + cpuTimeMedian);
        console.log("gpuTimeMedian : " + gpuTimeMedian);
        console.log("gpuTimeDeviceMedian : " + gpuTimeDeviceMedian);
        console.log("cpuTimeMean : " + cpuTimeMean);
        console.log("gpuTimeMean : " + gpuTimeMean);
        console.log("gpuTimeDeviceMean : " + gpuTimeDeviceMean);
        console.log("cpuTimeDeviation : " + cpuTimeDeviation);
        console.log("gpuTimeDeviation : " + gpuTimeDeviation);
        console.log("gpuTimeDeviceDeviation : " + gpuTimeDeviceDeviation);
    }

    var topTimersGpu = [];
    var topTimersCpu = [];
    for (timerid in TimerInfo)
    {
        var timer = TimerInfo[timerid]; 
        if (GroupInfo[timer.group].isgpu)
        {
            topTimersGpu.push({"name":timer.name, "group":GroupInfo[timer.group].name, "total":timer.total, "max":timer.max});
        } else
        {
            topTimersCpu.push({"name":timer.name, "group":GroupInfo[timer.group].name, "total":timer.total, "max":timer.max});
        }
    }

    {
        // top by total time
        var numCpuTimersToPrint = 250;
        var numGpuTimersToPrint = 150;

        topTimersCpu.sort((a, b) => {
            if(a.total > b.total) {
                return -1;
            } else if(a.total < b.total) {
                return 1;
            }
            return 0;
        });

        topTimersGpu.sort((a, b) => {
            if(a.total > b.total) {
                return -1;
            } else if(a.total < b.total) {
                return 1;
            }
            return 0;
        });

        var topByCpu = [];
        var numItemsCpu = Math.min(numCpuTimersToPrint, topTimersCpu.length);
        for (i = 0; i < numItemsCpu; i++)
        {
            var bottleneckName = topTimersCpu[i].group + "::" + topTimersCpu[i].name;
            topByCpu.push({"name":bottleneckName, "total":topTimersCpu[i].total});
            if (debugPrint)
            {
                console.log(String(i+1) + "," + bottleneckName + ", " + String(topTimersCpu[i].total));
            }
        }
        resultingJson["cpu_top_by_total_time"] = topByCpu;

        var topByGpu = [];
        var numItemsGpu = Math.min(numGpuTimersToPrint, topTimersGpu.length);
        for (i = 0; i < numItemsGpu; i++)
        {
            var bottleneckName = topTimersGpu[i].group + "::" + topTimersGpu[i].name;
            topByGpu.push({"name":bottleneckName, "total":topTimersGpu[i].total});
            if (debugPrint)
            {
                console.log(String(i+1) + "," + bottleneckName + ", " + String(topTimersGpu[i].total));
            }
        }
        resultingJson["gpu_top_by_total_time"] = topByGpu;
    }

    {
        // top by max time
        var numCpuTimersToPrint = 100;
        var numGpuTimersToPrint = 100;

        topTimersCpu.sort((a, b) => {
            if(a.max > b.max) {
                return -1;
            } else if(a.max < b.max) {
                return 1;
            }
            return 0;
        });

        topTimersGpu.sort((a, b) => {
            if(a.max > b.max) {
                return -1;
            } else if(a.max < b.max) {
                return 1;
            }
            return 0;
        });

        var topByCpu = [];
        var numItemsCpu = Math.min(10, topTimersCpu.length);
        for (i = 0; i < numItemsCpu; i++)
        {
            var bottleneckName = topTimersCpu[i].group + "::" + topTimersCpu[i].name;
            topByCpu.push({"name":bottleneckName, "max":topTimersCpu[i].max});
            if (debugPrint)
            {
                console.log(String(i+1) + "," + bottleneckName + ", " + String(topTimersCpu[i].max));
            }
        }
        resultingJson["cpu_by_max_time"] = topByCpu;

        var topByGpu = [];
        var numItemsGpu = Math.min(5, topTimersGpu.length);
        for (i = 0; i < numItemsGpu; i++)
        {
            var bottleneckName = topTimersGpu[i].group + "::" + topTimersGpu[i].name;
            topByGpu.push({"name":bottleneckName, "max":topTimersGpu[i].max});
            if (debugPrint)
            {
                console.log(String(i+1) + "," + bottleneckName + ", " + String(topTimersGpu[i].max));
            }
        }
        resultingJson["gpu_by_max_time"] = topByGpu;
    }

    if (debugPrint)
    {
        console.log(PlatformInfo);
    }
    resultingJson["platform_info"] = String(PlatformInfo);

    const downloadContent = JSON.stringify(resultingJson);

    var url = window.location.pathname; 
    var filename = url.substring(url.lastIndexOf('/') + 1); 
    filename = filename.substring(0, filename.lastIndexOf('.')) + '_summary.json'; 
    var link = document.createElement('a'); 
    link.setAttribute('download', filename); 
    link.setAttribute('href', 'data:text/json' + ';charset=utf-8,' + encodeURIComponent(downloadContent)); 
    link.click(); 
}


function ExportMarkersCSV(returnAsText)
{
   var tab_text = 'frames,' + AggregateInfo.Frames + '\nname,group,average,max,callaverage\n'; 
   for (timerid in TimerInfo)
   {
       var timer = TimerInfo[timerid]; 
       tab_text = tab_text + timer.name + ',' + GroupInfo[timer.group].name + ',' + timer.average + ',' + timer.max + ',' + timer.callaverage + '\n'; 
   }
   tab_text = tab_text + '\n\ngroup,average,max,total\n'; 
   for (groupid in GroupInfo)
   {
       var group = GroupInfo[groupid]; 
       tab_text = tab_text + group.name + ',' + group.average + ',' + group.max + ',' + group.total + '\n'; 
   }
   tab_text = tab_text + '\n\ngroup,thread,average,total\n'; 
   for (groupid in GroupInfo)
   {
       for (var i = 0; i < ThreadNames.length; ++i)
       {
           var PerThreadTimerTotal = ThreadGroupTimeArray[i][groupid]; 
           if (PerThreadTimerTotal > 0.01)
           {
               var ave = PerThreadTimerTotal / AggregateInfo.Frames; 
               tab_text = tab_text + GroupInfo[groupid].name + ',' + ThreadNames[i] + ',' + ave + ',' + PerThreadTimerTotal + '\n'; 
           }
       }
   }
   tab_text = tab_text + '\n\n\nframetimecpu\n'; 
   for (var i = 0; i < Frames.length; ++i)
   {
       var ms = Frames[i].frameend - Frames[i].framestart
       tab_text = tab_text + ms + ','; 
   }
   tab_text = tab_text + '\n\n\nframetimegpu\n'; 
   for (var i = 0; i < Frames.length; ++i)
   {
       var ms = Frames[i].frameendgpu - Frames[i].framestartgpu;
       tab_text = tab_text + ms + ','; 
   }
   tab_text = tab_text + '\n\n\n\n\n\n';
   for (var i = 0; i < Frames.length; ++i)
   {
       var fr = Frames[i];
       tab_text = tab_text + '\nFrame,Frame Begin Time CPU (ms),Frame End Time CPU (ms),Frame Begin Time GPU (ms),Frame End Time GPU (ms)\n' + i + ',';
       tab_text = tab_text + fr.framestart + ',' + fr.frameend + ',' + fr.framestartgpu + ',' + fr.frameendgpu + '\n\n';
       if (fr.incomplete)
       {
           tab_text = tab_text + 'INCOMPLETE\n';
           continue;
       }
       var nNumLogs = Frames[0].ts.length;
       for (var nLog = 0; nLog < nNumLogs; ++nLog)
       {
           var ts = fr.ts[nLog];		// timestamp (ms)	ts.length gives number of log entries. Indexes ts, ti, tt, tl
           var ti = fr.ti[nLog];		// timer index
           var tt = fr.tt[nLog];		// timer type	enter = 1, leave = 0, label = 3
           var tl = fr.tl[nLog];		// timer label
           var numEntries = ts.length;
           if (numEntries == 0)
               continue;
           var ThreadName = ThreadNames[nLog];
           var isGPU = ThreadGpu[nLog];
           tab_text = tab_text + 'Thread Name:,' + ThreadName + '\nGroup Name,Marker Name,Begin,End,Labels\n';
           var callStack = Array();
           var out = Array();
           for (var j = 0; j < numEntries; ++j)
           {
               var logType = tt[j];
               var timerid = ti[j];
               if (logType == 1)
               {
                   // ENTER
                   var timerName = TimerInfo[timerid].name;
                   if (timerName[0] == '$')
                   {
                       var nextLog = j + 1;
                       if (isGPU)
                           ++nextLog;
                       var nextLogType = tt[nextLog];
                       if ((nextLogType == 3) || (nextLogType == 5))
                       {
                           var labelIndex = ti[nextLog];
                           timerName = tl[labelIndex];
                       }
                   }
                   var log = { 'timerid':timerid, 'beginTime' : ts[j], 'endTime' : 0, 'label' : '', 'name' : timerName };
                   curTimer = out.length;
                   callStack.push(out.length);
                   out.push(log);
               }
               else if (logType == 0)
               {
                   // EXIT
                   var update = callStack[callStack.length - 1];
                   if (update >= 0)
                   {
                       out[update].endTime = ts[j];
                   }
                   callStack.pop();
               }
               else if ((logType == 3) || (logType == 5))
               {
                   // LABEL or LABEL_LITERAL
                   if ((timerid >= 0) && (callStack.length > 0))
                   {
                       var update = callStack[callStack.length - 1];
                       out[update].label = tl[timerid];
                   }
               }
           }
           for (var ot in out)
           {
               var outRow = out[ot];
               var timer = TimerInfo[outRow.timerid];
               var label = outRow.label;
               if (label == undefined)
                   label = ' ';
               tab_text = tab_text + GroupInfo[timer.group].name + ',' + outRow.name + ',' + outRow.beginTime + ',' + outRow.endTime + ',' + label + '\n';
           }
           tab_text = tab_text + '\n';
       }
   }
   
   if (returnAsText) {
	   return tab_text;
   }
   
   var url = window.location.pathname;
   var filename = url.substring(url.lastIndexOf('/') + 1);
   filename = filename.substring(0, filename.lastIndexOf('.')) + '.csv';
   var link = document.createElement('a');
   link.setAttribute('download', filename);
   link.setAttribute('href', 'data:text/csv' + ';charset=utf-8,' + encodeURIComponent(tab_text));
   link.click();
}

function ShowHelp(Show, Forever)
{
	var HelpWindow = document.getElementById('helpwindow');
	if(Show)
	{
		HelpWindow.style['display'] = 'block';
	}
	else
	{
		HelpWindow.style['display'] = 'none';
	}
	if(Forever)
	{
		nHideHelp = Show ? 0 : 1;
		WriteCookie();
	}
}

function SetMode(NewMode, Groups)
{
	var buttonTimers = document.getElementById('buttonTimers');
	var buttonDetailed = document.getElementById('buttonDetailed');
	var buttonGroups = document.getElementById('buttonGroups');
	var buttonThreads = document.getElementById('buttonThreads');
	var buttonCounters = document.getElementById('buttonCounters');
	var ilThreads = document.getElementById('ilThreads');
	var ilGroups = document.getElementById('ilGroups');
	var ModeElement = null;
	buttonTimers.style['text-decoration'] = 'none';
	buttonGroups.style['text-decoration'] = 'none';
	buttonThreads.style['text-decoration'] = 'none';
	buttonDetailed.style['text-decoration'] = 'none';
	buttonCounters.style['text-decoration'] = 'none';


	if(NewMode == 'counters' || NewMode == ModeCounters)
	{
		buttonCounters.style['text-decoration'] = 'underline';
		ilThreads.style['display'] = 'none';
		ilGroups.style['display'] = 'none';
		Mode = ModeCounters;
		ModeElement = buttonCounters;

	}
	else if(NewMode == 'timers' || NewMode == ModeTimers)
	{
		TimersGroups = Groups;
		buttonTimers.style['text-decoration'] = TimersGroups ? 'none' : 'underline';
		buttonGroups.style['text-decoration'] = TimersGroups == 1 ? 'underline' : 'none';
		buttonThreads.style['text-decoration'] = TimersGroups == 2 ? 'underline' : 'none';
		buttonDetailed.style['text-decoration'] = 'none';
		if(TimersGroups == 0)
		{
			ilThreads.style['display'] = 'none';
		}
		else
		{
			ilThreads.style['display'] = 'block';
		}
		ilGroups.style['display'] = 'block';
		Mode = ModeTimers;
		ModeElement = TimersGroups == 2 ? buttonThreads : TimersGroups == 1 ? buttonGroups : buttonTimers;

	}
	else if(NewMode == 'detailed' || NewMode == ModeDetailed)
	{
		buttonDetailed.style['text-decoration'] = 'underline';
	
		ilThreads.style['display'] = 'block';
		ilGroups.style['display'] = 'none';
		Mode = ModeDetailed;
		ModeElement = buttonDetailed;
	}
	var ModeSubMenuText = document.getElementById('ModeSubMenuText');
	ModeSubMenuText.innerText = 'Mode[' + ModeElement.innerText + ']';

	if(Mode == ModeTimers)
	{
		SetFilterInput(FilterInputGroupString, FilterInputTimerString);
	}
	else
	{
		ShowFilterInput(0);
	}

	WriteCookie();
	RequestRedraw();

}

function SetReferenceTime(TimeString)
{
	ReferenceTime = parseInt(TimeString);
	var ReferenceMenu = document.getElementById('ReferenceSubMenu');
	var Links = ReferenceMenu.getElementsByTagName('a');
	for(var i = 0; i < Links.length; ++i)
	{
		if(Links[i].innerHTML.match('^' + TimeString))
		{
			Links[i].style['text-decoration'] = 'underline';
		}
		else
		{
			Links[i].style['text-decoration'] = 'none';
		}
	}
	WriteCookie();
	RequestRedraw();

}

function ToggleContextSwitch()
{
	SetContextSwitch(nContextSwitchEnabled ? 0 : 1);
}
function SetContextSwitch(Enabled)
{
	nContextSwitchEnabled = Enabled ? 1 : 0;
	var ReferenceMenu = document.getElementById('OptionsMenu');
	var Links = ReferenceMenu.getElementsByTagName('a');
	Links[0].style['text-decoration'] = nContextSwitchEnabled ? 'underline' : 'none';
	WriteCookie();
	RequestRedraw();
}

function ToggleDebug()
{
	Debug = (Debug + 1) % 2;
}

function ToggleDisableMerge()
{
	DisableMerge = DisableMerge ? 0 : 1;
	var ReferenceMenu = document.getElementById('OptionsMenu');
	var Links = ReferenceMenu.getElementsByTagName('a');
	if(DisableMerge)
	{
		Links[1].style['text-decoration'] = 'underline';
	}
	else
	{
		Links[1].style['text-decoration'] = 'none';
	}

}

function ToggleDisableLod()
{
	DisableLod = DisableLod ? 0 : 1;
	var ReferenceMenu = document.getElementById('OptionsMenu');
	var Links = ReferenceMenu.getElementsByTagName('a');
	if(DisableLod)
	{
		Links[2].style['text-decoration'] = 'underline';
	}
	else
	{
		Links[2].style['text-decoration'] = 'none';
	}

}

function GatherHoverMetaCounters(TimerIndex, StartIndex, nLog, nFrameLast)
{
	var HoverInfo = new Object();
	var StackPos = 1;
	//search backwards, count meta counters 
	for(var i = nFrameLast; i >= 0; i--)
	{
		var fr = Frames[i];
		var ts = fr.ts[nLog];
		var ti = fr.ti[nLog];
		var tt = fr.tt[nLog];
		var start = i == nFrameLast ? StartIndex-1 : ts.length-1;

		for(var j = start; j >= 0; j--)
		{
			var type = tt[j];
			var index = ti[j];
			var time = ts[j];
			if(type == 1)
			{
				StackPos--;
				if(StackPos == 0 && index == TimerIndex)
				{
					return HoverInfo;
				}
			}
			else if(type == 0)
			{
				StackPos++;
			}
			else if(type >= 8 && type <= 127) // EventBaseId
			{
				var nMetaCount = type - 8;
				var nMetaIndex = MetaNames[index];
				if(nMetaIndex in HoverInfo)
				{
					HoverInfo[nMetaIndex] += nMetaCount;
				}
				else
				{
					HoverInfo[nMetaIndex] = nMetaCount;
				}
			}
		}
	}
}

function GatherHoverLabels(TimerIndex, StartIndex, nLog, nFrameLast)
{
	var HoverInfo = [];
	var StackPos = 1;
	//search backwards, aggregate labels
	for(var i = nFrameLast; i >= 0; i--)
	{
		var fr = Frames[i];
		var ts = fr.ts[nLog];
		var ti = fr.ti[nLog];
		var tt = fr.tt[nLog];
		var tl = fr.tl[nLog];
		var start = i == nFrameLast ? StartIndex-1 : ts.length-1;

		for(var j = start; j >= 0; j--)
		{
			var type = tt[j];
			var index = ti[j];
			var time = ts[j];
			if(type == 1)
			{
				StackPos--;
				if(StackPos == 0 && index == TimerIndex)
				{
					return HoverInfo.reverse();
				}
			}
			else if(type == 0)
			{
				StackPos++;
			}
			else if (type == 3 && StackPos == 1)
			{
				var Label = tl[index];
				HoverInfo.push(Label ? Label : "??");
			}
		}
	}
}

function CalculateTimers(GroupInfo, TimerInfo, nFrameFirst, nFrameLast, nToken, nGroup)
{
	if(!nFrameFirst || nFrameFirst < 0)
		nFrameFirst = 0;
	if(!nFrameLast || nFrameLast > Frames.length)
		nFrameLast = Frames.length;
	var FrameCount = nFrameLast - nFrameFirst;
	if(0 == FrameCount)
		return;
	for(var j = 0; j < GroupInfo.length; j++)
	{
		GroupInfo[j].Sum = 0;
		GroupInfo[j].FrameMax = 0;
	}
	for(var j = 0; j < TimerInfo.length; j++)
	{
		TimerInfo[j].CallCount = 0;
		TimerInfo[j].Sum = 0;
		TimerInfo[j].ExclusiveSum = 0;
		TimerInfo[j].Max = 0;
		TimerInfo[j].FrameMax = 0;
		TimerInfo[j].ExclusiveFrameMax = 0;
		TimerInfo[j].MaxCallCount = 0;
		TimerInfo[j].MaxCallCountFrame = 0;
	}

	var nNumLogs = Frames[0].ts.length;
	var StackPosArray = Array(nNumLogs);
	var StackArray = Array(nNumLogs);
	var StackChildArray = Array(nNumLogs);
	var GroupPosArray = Array(nNumLogs);
	for(var i = 0; i < nNumLogs; ++i)
	{
		StackPosArray[i] = 0;
		StackArray[i] = Array(20);
		StackChildArray[i] = Array(20);
		GroupPosArray[i] = Array(GroupInfo.length);

		var GroupPos = GroupPosArray[i];
		for(var j = 0; j < GroupInfo.length; j++)
		{
			GroupPos[j] = 0;
		}
	}

	for(var i = nFrameFirst; i < nFrameLast; i++)
	{
		// Remove this frame from the global framecount
		if(FrameCount > 1 && AggregateInfo.EmptyFrames[i])
		{
			FrameCount -= 1;
			continue;
		}
		for(var j = 0; j < GroupInfo.length; j++)
		{
			GroupInfo[j].FrameSum = 0;
		}
		for(var j = 0; j < TimerInfo.length; j++)
		{
			TimerInfo[j].FrameSum = 0;
			TimerInfo[j].ExclusiveFrameSum = 0;
			TimerInfo[j].FrameCallCount    = 0;
		}

		var fr = Frames[i];
		for(nLog = 0; nLog < nNumLogs; nLog++)
		{
			var StackPos = StackPosArray[nLog];
			var Stack = StackArray[nLog];
			var StackChild = StackChildArray[nLog];
			var GroupPos = GroupPosArray[nLog];
			var ts = fr.ts[nLog];
			var ti = fr.ti[nLog];
			var tt = fr.tt[nLog];
			var count = ts.length;
			var frameOverflow  = OverflowAllowance(nLog, fr);
			var discardLast    = 0;
			for(j = 0; j < count; j++)
			{
				var type = tt[j];
				var index = ti[j];
				var time = ts[j];
				if(type == 1) //enter
				{
					// We do not want to include markers that are from the ring buffer wrap around
					// They can and will confuse the issue completely. We filter them out
					// by checking if the marker is past the next frame. If the marker is
					// skip it!
					discardLast = 0;
					if(time >= frameOverflow)
					{
						discardLast = 1;
						continue;
					}
					//push
					Stack[StackPos] = time;
					StackPos++;
					StackChild[StackPos] = 0;

					var groupid = TimerInfo[index].group;
					GroupPos[groupid]++;
				}
				else if(type == 0) // leave
				{
					// Did we throw out the last start marker or this
					// marker is way out of range?
					if(discardLast || time >= frameOverflow)
					{
						continue;
					}
					var TimeDelta, TimeDeltaExclusive, TimeStart;
					if(StackPos>0)
					{
						StackPos--;
						TimeStart = Stack[StackPos];
						TimeDelta = time - Stack[StackPos];
						TimeDeltaExclusive = TimeDelta - StackChild[StackPos+1];
						StackChild[StackPos] += TimeDelta;
					}
					else
					{
						TimeStart = Frames[nFrameFirst].framestart;
						TimeDelta = time - Frames[nFrameFirst].framestart;
						TimeDeltaExclusive = TimeDelta;
					}

					if(nToken < 0 || nToken == index)
					{
						TimerInfo[index].CallCount++;
						TimerInfo[index].FrameSum += TimeDelta;
						TimerInfo[index].ExclusiveFrameSum += TimeDeltaExclusive;
						TimerInfo[index].Sum += TimeDelta;
						TimerInfo[index].ExclusiveSum += TimeDeltaExclusive;
						if(TimeDelta > TimerInfo[index].Max)
						{
							TimerInfo[index].Max = TimeDelta;
							TimerInfo[index].worst = TimeDelta;
							TimerInfo[index].worststart = TimeStart;
							TimerInfo[index].worstend = time;
							TimerInfo[index].worstthread = nLog;
						}
					}
					// This is cleared each frame.
					// We want this across all tokens
					TimerInfo[index].FrameCallCount += 1;

					var groupid = TimerInfo[index].group;
					if(nGroup < 0 || nGroup == groupid)
					{
						if(GroupPos[groupid] > 0)
						{
							GroupPos[groupid]--;
						}
						if(GroupPos[groupid] == 0)
						{
							GroupInfo[groupid].Sum += TimeDelta;
							GroupInfo[groupid].FrameSum += TimeDelta;
						}
					}
				}
				else
				{
					//meta
				}
			}
			StackPosArray[nLog] = StackPos;
		}
		for(var j = 0; j < GroupInfo.length; j++)
		{
			if(GroupInfo[j].FrameSum > GroupInfo[j].FrameMax)
			{
				GroupInfo[j].FrameMax = GroupInfo[j].FrameSum;
			}
		}
		for(var j = 0; j < TimerInfo.length; j++)
		{
			if(TimerInfo[j].FrameSum > TimerInfo[j].FrameMax)
			{
				TimerInfo[j].FrameMax = TimerInfo[j].FrameSum;
			}
			if(TimerInfo[j].ExclusiveFrameSum > TimerInfo[j].ExclusiveFrameMax)
			{
				TimerInfo[j].ExclusiveFrameMax = TimerInfo[j].ExclusiveFrameSum;
			}
			if(TimerInfo[j].FrameCallCount > TimerInfo[j].MaxCallCount)
			{
				TimerInfo[j].MaxCallCount      = TimerInfo[j].FrameCallCount;
				TimerInfo[j].MaxCallCountFrame = i;
			}
		}
	}

	for(var j = 0; j < GroupInfo.length; j++)
	{
		GroupInfo[j].FrameAverage = (GroupInfo[j].Sum / FrameCount);
	}
	for(var j = 0; j < TimerInfo.length; j++)
	{
		TimerInfo[j].CallAverage = (TimerInfo[j].Sum / TimerInfo[j].CallCount);
		TimerInfo[j].FrameAverage = (TimerInfo[j].Sum / FrameCount);
		TimerInfo[j].ExclusiveFrameAverage = (TimerInfo[j].ExclusiveSum / FrameCount);
	}
}

function PreprocessTimerSubstitions(SubstituteGroup, SubstituteTimer)
{
	var SubIndex = TimerInfo.findIndex((element) => (element.name == SubstituteTimer && GroupInfo[element.group].name == SubstituteGroup));
	if (SubIndex == -1)
		return;
	if (!TimerInfo[SubIndex].namelabel)
		return;
	ProfileEnter('PreprocessTimerSubstitions');
	var SubstituteName = TimerInfo[SubIndex].name.slice(1) + '_';
	var TimerInfoStartLength = TimerInfo.length;
	var ReferenceTimer = Object.assign({}, TimerInfo[SubIndex]);
	var NewTimers = [];
	var nNumLogs = Frames[0].ts.length;
	for (nLog = 0; nLog < nNumLogs; nLog++)
	{
		var Discard = 0;
		var NewTimerIndex = -1;
		var NewTimerStack = Array();
		for (var i = 0; i < Frames.length; i++)
		{
			var Frame_ = Frames[i];
			var FrameDiscard = OverflowAllowance(nLog, Frame_);
			var tt = Frame_.tt[nLog];
			var ts = Frame_.ts[nLog];
			var ti = Frame_.ti[nLog];
			var tl = Frame_.tl[nLog];
			var len = tt.length;
			for (var xx = 0; xx < len; ++xx)
			{
				var Skip = (tt[xx] == 4) ? DiscardLast : (tt[xx] < EventBaseId && ts[xx] > FrameDiscard);
				if (Skip)
				{
					Discard++;
					DiscardLast = 1;
				}
				else
				{
					DiscardLast = 0;

					// Use label after the region instead of the region name for some regions
					if (xx + 1 < len && tt[xx] == 1 && tt[xx + 1] == 3 && ti[xx] == SubIndex)
					{
						// ENTER
						var Label = tl[ti[xx + 1]];
						var NewName = SubstituteName + Label;
						NewTimerIndex = NewTimers.findIndex((element) => (element == NewName));
						if (NewTimerIndex == -1)
						{
							NewTimerIndex = NewTimers.length;
							NewTimers.push(NewName);
							var finalIndex = TimerInfo.length;
							TimerInfo[finalIndex] = Object.assign({}, ReferenceTimer);
							TimerInfo[finalIndex].name = NewName;
							TimerInfo[finalIndex].id = finalIndex;
							TimerInfo[finalIndex].namelabel = 0;
						}

						NewTimerIndex += TimerInfoStartLength;
						Frame_.ti[nLog][xx] = NewTimerIndex;
						NewTimerStack.push(NewTimerIndex);
					}
					else if (tt[xx] == 0 && ti[xx] == SubIndex && NewTimerStack.length > 0)
					{
						// EXIT
						Frame_.ti[nLog][xx] = NewTimerStack.pop();
					}
				}
			}
		}
	}
	var GroupNum = ReferenceTimer.group;
	GroupInfo[GroupNum].numtimers += NewTimers.length;
	console.log('Substitution for ' + SubstituteTimer + ' increased timer count by ' + NewTimers.length + ' to ' + TimerInfo.length);
	ProfileLeave();
}

function PreprocessCalculateAllTimers()
{
	ProfileEnter("PreprocessCalculateAllTimers");
	CalculateTimers(GroupInfo, TimerInfo, 0, Frames.length, -1, -1);
	ProfileLeave();
}

var FlashFrames = 10;
var FlashFrameCounter = 0;
var FlashMessage = '';
var FlashColor = '';
function TimeString(Diff)
{
	var DiffString = "0 sec";
	var DiffTable = [1,60,60*60,60*60*24];
	var DiffNameTable = ["sec", "min", "hr", "day"];
	for(var i = 0; i < DiffTable.length; ++i)
	{
		if(Diff >= DiffTable[i])
		{
			DiffString = Math.floor(Diff / DiffTable[i]) + " " + DiffNameTable[i];
		}
	}
	return DiffString;

}
function ShowFlashMessage(Message, FrameCount, Color)
{
	FlashMessage = Message;
	FlashFrameCounter = FrameCount;
	FlashColor = Color ? Color : 'red';
}
function OnPageReady()
{
	var DumpDate = DumpUtcCaptureTime;
	var CurrentDate = Date.now() / 1000;
	var Diff = CurrentDate - DumpDate;
	var Limit = 10*60;//flash old message when loading captures older than 10 minutes 
	if(Diff > Limit)
	{
		ShowFlashMessage("Captured " + TimeString(Diff) + " ago", 100);
	}
	if(!nHideHelp)
	{
		ShowHelp(1,0);
	}
	g_Loader.pageReady = true;
}

function DrawFlashMessage(context)
{
	if(FlashFrameCounter > 0)
	{
		if(FlashFrameCounter>1)
		{
			var h = FontFlashHeight;
			var lines = FlashMessage.split('\n');
			var FlashPrc = Math.sin(FlashFrameCounter / FlashFrames);
			context.font = FontFlash;
			context.globalAlpha = FlashPrc * 0.35 + 0.5;
			context.textAlign = 'center';
			context.fillStyle = FlashColor;
			for (var i = 0; i < lines.length; i++) {
				var line = lines[i];
				context.fillText(line, nWidth * 0.5, 50 + i * h);
			}
			context.globalAlpha = 1;
			context.textAlign = 'left';
			context.font = Font;
		}
		FlashFrameCounter -= 1;

	}
}

function DrawCaptureInfo(context)
{
	context.fillStyle = 'white';
	context.textAlign = 'right';
	context.font = Font;
	var DumpDate = DumpUtcCaptureTime;
	var CurrentDate = Date.now() / 1000;
	var Diff = CurrentDate - DumpDate;
	var DiffString = TimeString(Diff) + " ago";
	context.fillText(new Date(DumpDate*1000).toLocaleString(), nWidth, FontHeight);
	if(Mode == ModeTimers)
	{
		context.fillText("Timer Frames: " + AggregateInfo.Frames, nWidth, FontHeight*2);
	}
	else
	{
		context.fillText("Detailed Frames "+ Frames.length, nWidth, FontHeight*2);
	}
	context.fillText(DumpHost, nWidth, FontHeight*3);
	context.fillText(DiffString, nWidth, FontHeight*4);
	context.textAlign = 'left';
	DrawFlashMessage(context);
}

function DrawDetailedFrameHistory()
{
	ProfileEnter("DrawDetailedFrameHistory");
	var x = HistoryViewMouseX;

	var context = CanvasHistory.getContext('2d');
	context.clearRect(0, 0, CanvasHistory.width, CanvasHistory.height);

	var fHeight = nHistoryHeight;
	var fWidth = nWidth / Frames.length;
	var fHeightScale = fHeight / ReferenceTime;
	var fX = 0;
	var FrameIndex = -1;
	var MouseDragging = MouseDragState != MouseDragOff;
	RangeCpuHistory = RangeInit();
	RangeGpuHistory = RangeInit()

	var aveAllocTime = 0;
	var aveAllocCount = 0;
	if (Frames.length > 0)
	{
		for (var i = 0; i < Frames.length; i++)
		{
			if (Frames[i].paused)
				continue;
			aveAllocTime += Frames[i].allocmsecs;
			aveAllocCount++;
		}
		if (aveAllocCount > 0)
			aveAllocTime /= aveAllocCount;
	}

	var viewSpan = { // SpanType
		name: "",
		tsBegin: fDetailedOffset,
		tsEnd: fDetailedOffset + fDetailedRange,
		colorBg: '#009900',
		colorLine: '#00ff00',
	};
	var spansExtended = [viewSpan];
	for (const spanName in g_Ext.spans) {
		g_Ext.spans[spanName].forEach(function(span) {
			spansExtended.push(span);
		});
	}
	var spanOffsets = [];
	spansExtended.forEach(function(span) {
		var offsets = {
			from: -1,
			to: nWidth,
			span: span,
		};
		spanOffsets.push(offsets);
	});

	for(i = 0; i < Frames.length; i++)
	{
		var fMs = Frames[i].frameend - Frames[i].framestart;

		spanOffsets.forEach(function(offsets) {
			if(offsets.span.tsBegin <= Frames[i].frameend && offsets.span.tsBegin >= Frames[i].framestart)
			{
				var lerp = (offsets.span.tsBegin - Frames[i].framestart) / (Frames[i].frameend - Frames[i].framestart);
				offsets.from = fX + fWidth * lerp;
			}
			if(offsets.span.tsEnd <= Frames[i].frameend && offsets.span.tsEnd >= Frames[i].framestart)
			{
				var lerp = (offsets.span.tsEnd - Frames[i].framestart) / (Frames[i].frameend - Frames[i].framestart);
				offsets.to = fX + fWidth * lerp;
			}
		});

		var fH = fHeightScale * fMs;
		var bMouse = x > fX && x < fX + fWidth;
		if(bMouse && !MouseDragging)
		{
			context.fillStyle = FRAME_HISTORY_COLOR_MOUSE_HOVER;
			RangeCpuHistory.Begin = Frames[i].framestart;
			RangeCpuHistory.End = Frames[i].frameend;
			if(Frames[i].framestartgpu)
			{
				RangeGpuHistory.Begin = Frames[i].framestartgpu;
				RangeGpuHistory.End = Frames[i].frameendgpu;
			}
			FrameIndex = i;
		}
		else
		{
			if(AggregateInfo.EmptyFrames && AggregateInfo.EmptyFrames[i])
			{
				// Ring buffer wrap around
				if(AggregateInfo.EmptyFrames[i] == 2)
				{
					context.fillStyle = FRAME_HISTORY_COLOR_WRAPAROUND;
				}
				else
				{
					context.fillStyle = FRAME_HISTORY_COLOR_EMPTY;
				}
			}
			else 
			{
               if(Frames[i].paused)
               {
                   context.fillStyle = FRAME_HISTORY_COLOR_EMPTY;
               }
               else if(Frames[i].incomplete)
               {
                   context.fillStyle = FRAME_HISTORY_COLOR_INCOMPLETE;
               }
               else 
               {
					if (aveAllocTime == 0)
						context.fillStyle = FRAME_HISTORY_COLOR_CPU;
					else
					{
						// Any allocation time above the average gets the maximum level.
						var level = Math.round((Frames[i].allocmsecs * 256.0) / aveAllocTime);
						level = Math.min(level, 255);
						var alpha = level.toString(16); 
						context.fillStyle = FRAME_HISTORY_COLOR_CPU + alpha; 
					}
                    if(Frames[i].cpu_waits_for_gpu > 2.5)
                    {
                        context.fillStyle = FRAME_HISTORY_COLOR_GPU;
                    } else if(Frames[i].render_finished_ms > Frames[i].jobs_finished_ms)
                    {
                        context.fillStyle = FRAME_HISTORY_COLOR_CPU_RENDER;
                    }
				}
			}
		}

		var origColor = context.fillStyle;
		var xrayColor = "";
		if (g_Ext.xray.viewEnabled || g_Ext.xray.barEnabled) {
			var txAcc = Frames[i].txAcc;
			var txNorm = GetNormalizedFromTx(txAcc, true);
			xrayColor = txNorm.color;
			if (g_Ext.xray.viewEnabled) {
				context.fillStyle = xrayColor;
			}
		}

		context.fillRect(fX, fHeight - fH, fWidth-1, fH);

		if (!g_Ext.xray.viewEnabled && g_Ext.xray.barEnabled) {
			// Top bar for frames
			context.fillStyle = xrayColor;
			context.fillRect(fX, fHeight - g_Ext.xray.barFrameHeight, fWidth-1, g_Ext.xray.barFrameHeight);
			context.fillStyle = origColor;
		}

		fX += fWidth;
	}

	// Current range + spans
	var DrawFrameRange = function(from, to, colorBg, colorLine) {
		var fRangeHistoryBegin = from;
		var fRangeHistoryEnd = to;
		var X = fRangeHistoryBegin;
		var Y = 0;
		var W = fRangeHistoryEnd - fRangeHistoryBegin;
		context.globalAlpha = 0.35;
		context.fillStyle = colorBg;
		context.fillRect(X, Y, W, fHeight);
		context.globalAlpha = 1;
		context.strokeStyle = colorLine;
		context.beginPath();
		context.moveTo(X, Y);
		context.lineTo(X, Y+fHeight);
		context.moveTo(X+W, Y);
		context.lineTo(X+W, Y+fHeight);
		context.stroke();
	};
	spanOffsets.forEach(function(offsets) {
		DrawFrameRange(offsets.from, offsets.to, offsets.span.colorBg, offsets.span.colorLine);
	});

	DrawCaptureInfo(context);

	if (HistoryViewMouseY < fHeight && (HistoryViewMouseY >= fHeight - g_Ext.xray.barFrameHeight) &&
		!g_Loader.barFramesTooltipBlocked && !MouseDragging &&
		g_Ext.xray.barEnabled && !g_Ext.xray.viewEnabled && g_Ext.currentPlugin && g_Ext.currentPlugin.tooltipBarFrames)
	{
		if (!g_Loader.barFramesTooltipShown) {
			g_Loader.barFramesTooltipShown = true;
			setTimeout(function() {
				g_Loader.barFramesTooltipBlocked = true;
			}, 4500);
		}
		var StringArray = [];
		g_Ext.currentPlugin.tooltipBarFrames.forEach(line => {
			StringArray.push(line);
			StringArray.push("");
		});		
		DrawToolTip(StringArray, CanvasHistory, HistoryViewMouseX, HistoryViewMouseY+20);
	}
	else if(FrameIndex>=0 && !MouseDragging && HistoryViewMouseX >= 0 && HistoryViewMouseY >= 0)
	{
		var StringArray = [];
        var cpuTimeIncl = Frames[FrameIndex].frameend - Frames[FrameIndex].framestart;
        var cpuTimeExcl = cpuTimeIncl - Frames[FrameIndex].cpu_waits_for_gpu;
        var gpuTime = Frames[FrameIndex].frameendgpu - Frames[FrameIndex].framestartgpu;
        var gpuTimeDevice = Frames[FrameIndex].gpu_time_ms;
        var waitForRenderingThread = Frames[FrameIndex].render_finished_ms - Frames[FrameIndex].jobs_finished_ms;
        var desc = "Simulation (CPU)";
        var descColor = FRAME_HISTORY_COLOR_CPU;
        if(Frames[FrameIndex].cpu_waits_for_gpu > 2.5)
        {
            desc = "Rendering (GPU)";
			descColor = FRAME_HISTORY_COLOR_GPU;
        } else if(waitForRenderingThread > 0)
        {
            desc = "Render Thread (CPU)";
			descColor = FRAME_HISTORY_COLOR_CPU_RENDER;			
        }

		StringArray.push("Frame");
		StringArray.push(String(FrameIndex));
		StringArray.push("Bottleneck");
		StringArray.push({ str: desc, textColor: descColor });
		StringArray.push("CPU Time (excl/incl)");
		StringArray.push(String(cpuTimeExcl.toFixed(3)) + "ms/" + String(cpuTimeIncl.toFixed(3)) + "ms");
		StringArray.push("GPU Time (mp/dev)");
		StringArray.push(String(gpuTime.toFixed(3)) + "ms/" + String(gpuTimeDevice.toFixed(3)) + "ms");
		StringArray.push("CPU waits for GPU");
		StringArray.push(String(Frames[FrameIndex].cpu_waits_for_gpu.toFixed(3)) + "ms");
		StringArray.push("Waiting for Rendering Thread");
		StringArray.push(String(waitForRenderingThread.toFixed(3)) + "ms");
		StringArray.push("Mem Used/Free");
		StringArray.push(String(Frames[FrameIndex].usedmemorymb.toFixed(1)) + "mb/" + String(Frames[FrameIndex].freememorymb.toFixed(1)) + "mb");
		StringArray.push("Alloc/Free Time");
		StringArray.push(String(Frames[FrameIndex].allocmsecs.toFixed(3)) + "ms/" + String(Frames[FrameIndex].freemsecs.toFixed(3)) + "ms");
		StringArray.push("Alloc/Free Count");
		StringArray.push(String(Frames[FrameIndex].allocs) + "/" + String(Frames[FrameIndex].frees));
		if(AggregateInfo.EmptyFrames[FrameIndex] == 1)
		{
			StringArray.push("");
			StringArray.push("");
			StringArray.push("EMPTY");
			StringArray.push("");
		}

		DrawToolTip(StringArray, CanvasHistory, HistoryViewMouseX, HistoryViewMouseY+20);

		if(AggregateInfo.EmptyFrames[FrameIndex] == 2)
		{
			Warning = [];
			Warning.push("");
			Warning.push("");
			Warning.push("*** Ring Buffer Wrap Around Detected ***");
			Warning.push("");
			Warning.push("");
			Warning.push("");
			Warning.push("    WARNING: DATA WILL BE SUSPECT");
			Warning.push("");
			Warning.push("");
			Warning.push("");
			DrawToolTip(Warning, CanvasDetailedView, HistoryViewMouseX, DetailedViewMouseY,"#FF0000","#FFAAFF");
		}
	}
	ProfileLeave();
}
function TimeToMsString(Time)
{
	return Time.toFixed(3) + "ms";
}
function TimeToString(Time)
{
	if(Time > 1000)
	{
		return (Time/1000.0).toFixed(0) +"s";
	}
	else if(Time > 0.9)
	{
		return Time.toFixed(0) + "ms";
	}
	else if(Time > 0.0009)
	{
		return (Time*1000).toFixed(0) + "us";
	}
	else
	{
		return (Time*1000000).toFixed(0) + "ns";
	}
}

function DrawDetailedBackground(context)
{
	var fMs = fDetailedRange;
	var fMsEnd = fMs + fDetailedOffset;
	var fMsToScreen = nWidth / fMs;
	var fRate = Math.floor(2*((Math.log(fMs)/Math.log(10))-1))/2;
	var fStep = Math.pow(10, fRate);
	var fRcpStep = 1.0 / fStep;
	var nColorIndex = Math.floor(fDetailedOffset * fRcpStep) % 2;
	if(nColorIndex < 0)
		nColorIndex = -nColorIndex;
	var fStart = Math.floor(fDetailedOffset * fRcpStep) * fStep;
	var fHeight = CanvasDetailedView.height;
	var fScaleX = nWidth / fDetailedRange; 
	var HeaderString = TimeToString(fStep);
	context.textAlign = 'center';
	context.font = Font;

	var barYOffset = 0;
	if (g_Ext.xray.barEnabled)
	{
		// Background for the top bar for the detailed view
		barYOffset = g_Ext.xray.barYOffset;
		context.fillStyle = "#000000";
		context.fillRect(0, 0, nWidth, barYOffset);
	}

	for(f = fStart; f < fMsEnd; )
	{
		var fNext = f + fStep;
		var X = (f - fDetailedOffset) * fScaleX;
		var W = (fNext-f)*fScaleX;
		context.fillStyle = nBackColors[nColorIndex];
		context.fillRect(X, barYOffset, W+2, fHeight);
		nColorIndex = 1 - nColorIndex;
		context.fillStyle = '#777777'
		context.fillText(HeaderString, X + W * 0.5, 10 + barYOffset);
		context.fillText(HeaderString, X + W * 0.5, nHeight - 10);
		f = fNext;
	}
	context.textAlign = 'left';
	var fScaleX = nWidth / fDetailedRange; 
	context.globalAlpha = 0.5;
	context.strokeStyle = '#bbbbbb';
	context.beginPath();
	for(var i = 0; i < Frames.length; i++)
	{
		var frfr = Frames[i];
		if(frfr.frameend < fDetailedOffset || frfr.framestart > fDetailedOffset + fDetailedRange)
		{
			continue;
		}
		var X = (frfr.framestart - fDetailedOffset) * fScaleX;
		if(X >= 0 && X < nWidth)
		{
			context.moveTo(X, 0);
			context.lineTo(X, nHeight);
		}
	}
	context.stroke();
	context.globalAlpha = 1;

}
function DrawToolTip(StringArray, Canvas, x, y, color, textColor, updatedRect)
{
	function GetText(entry) {
		return IsSimpleType(entry) ? entry : entry.str;
	}
	function UpdateFillStyle(ctx, entry, defaultColor) {
		var curColor = IsSimpleType(entry) ? defaultColor : entry.textColor;
		if (ctx.fillStyle != curColor) {
			ctx.fillStyle = curColor;
		}
	}

	var context = Canvas.getContext('2d');
	context.font = Font;
	var WidthArray = Array(StringArray.length);
	var nMaxWidth = 0;
	var nHeight = 0;
	for(i = 0; i < StringArray.length; i += 2)
	{
		var nWidth0 = context.measureText(GetText(StringArray[i])).width;
		var nWidth1 = context.measureText(GetText(StringArray[i+1])).width;
		var nSum = nWidth0 + nWidth1;
		WidthArray[i] = nWidth0;
		WidthArray[i+1] = nWidth1;
		if(nSum > nMaxWidth)
		{
			nMaxWidth = nSum;
		}
		nHeight += BoxHeight;
	}
	nMaxWidth += 15;
	//bounds check.
	var CanvasRect = Canvas.getBoundingClientRect();
	if(y + nHeight > CanvasRect.height)
	{
		y = CanvasRect.height - nHeight;
		x += 20;
	}
	if(x + nMaxWidth > CanvasRect.width)
	{
		x = CanvasRect.width - nMaxWidth;
	}
	if (updatedRect != undefined)
	{
		updatedRect.x = x;
		updatedRect.y = y;
		updatedRect.w = nMaxWidth;
		updatedRect.h = nHeight;
	}

	var defaultColor = textColor ? textColor : 'white';
	context.fillStyle = color ? color : 'black';
	context.fillRect(x-2, y-1, nMaxWidth+4, nHeight+2);
	context.fillStyle = 'black';
	context.fillRect(x-1, y, nMaxWidth+2, nHeight);
	context.fillStyle = defaultColor;

	var XPos = x;
	var XPosRight = x + nMaxWidth;
	var YPos = y + BoxHeight-2;
	for(i = 0; i < StringArray.length; i += 2)
	{
		var left = StringArray[i];
		var right = StringArray[i+1];
		UpdateFillStyle(context, left, defaultColor);
		context.fillText(GetText(left), XPos, YPos);
		UpdateFillStyle(context, right, defaultColor);
		context.fillText(GetText(right), XPosRight - WidthArray[i+1], YPos);
		YPos += BoxHeight;
	}
}
function CloneObject(obj)
{
	var copy = new Object();
	for(var attr in obj)
	{
		if(obj.hasOwnProperty(attr))
		{
			copy[attr] = obj[attr];
		}
	}
	return copy;
}
function CloneArray(arr)
{
	var result = Array(arr.length);
	for(var i = 0; i < arr.length; ++i)
	{
		result[i] = CloneObject(arr[i]);
	}
	return result;
}
function DrawHoverToolTip()
{
	// Do not draw the tooltip if the events window is visible
	var EventsWindow = document.getElementById('eventswindow');
	if (EventsWindow.style.display != 'none')
		return;
	if (DetailedViewMouseX < 0 || DetailedViewMouseY < 0)
		return;

	if(!ToolTip)
	{
		return;
	}
	ProfileEnter("DrawHoverToolTip");
	if(nHoverToken != -1)
	{
		var StringArray = [];

		var Timer = TimerInfo[nHoverToken];
		var Group = GroupInfo[Timer.group];

		var bShowTimers = Mode == ModeTimers;
		if(ToolTip == 2)
		{ //0: off, 1: default, 2: flipped
			bShowTimers = !bShowTimers;
		}
		// This frame is empty, we need to display something else.
		var threadSuspect = 1;
		if (nHoverTokenLogIndex != -1 && ThreadClobbered.length > 0)
		{
			threadSuspect = ThreadClobbered[nHoverTokenLogIndex];
		}
		if(threadSuspect && nHoverFrame >= 0 && AggregateInfo.EmptyFrames[nHoverFrame])
		{
			Warning = [];
			Warning.push("Timer: ");
			Warning.push(Timer.name);
			Warning.push("");
			Warning.push("");
			Warning.push("Ring Buffer Wrap Around");
			Warning.push("");
			Warning.push("Warning: Data is highly suspect!");
			Warning.push("");
			Warning.push("");
			Warning.push("");
			DrawToolTip(Warning, CanvasDetailedView, DetailedViewMouseX, DetailedViewMouseY-60, "#FF0000", "#FFAAFF");
		}
		if(bShowTimers || nHoverFrame == -1)
		{
			StringArray.push("Timer:");
			StringArray.push(Timer.name);

			StringArray.push("");
			StringArray.push("");

			StringArray.push("Average:");
			StringArray.push(Timer.average.toFixed(3)+"ms");
			StringArray.push("Max:");
			StringArray.push(Timer.max.toFixed(3)+"ms");

			StringArray.push("");
			StringArray.push("");

			StringArray.push("Exclusive Average:");
			StringArray.push(Timer.exclaverage.toFixed(3)+"ms");
			StringArray.push("Exclusive Max:");
			StringArray.push(Timer.exclmax.toFixed(3)+"ms");

			StringArray.push("");
			StringArray.push("");

			StringArray.push("Call Average:");
			StringArray.push(Timer.callaverage.toFixed(3)+"ms");
			StringArray.push("Call Count:");
			StringArray.push((Timer.callcount / AggregateInfo.TotalFrames()).toFixed(2));

			StringArray.push("");
			StringArray.push("");

			StringArray.push("Group:");
			StringArray.push(Group.name);
			StringArray.push("Frame Average:");
			StringArray.push(Group.average.toFixed(3)+"ms");
			StringArray.push("Frame Max:");
			StringArray.push(Group.max.toFixed(3)+"ms");
		}
		else
		{
			var FrameGroupInfo = CloneArray(GroupInfo);
			var FrameTimerInfo = CloneArray(TimerInfo);

			CalculateTimers(FrameGroupInfo, FrameTimerInfo, nHoverFrame, nHoverFrame+1, nHoverToken, Timer.group);

			var GroupTime = FrameGroupInfo[Timer.group];
			var FrameTime = FrameTimerInfo[nHoverToken];

			StringArray.push("Timer:");
			StringArray.push(Timer.name);
			StringArray.push("Time:");
			StringArray.push((Group.isgpu ? RangeGpu.End-RangeGpu.Begin : RangeCpu.End-RangeCpu.Begin).toFixed(3)+"ms");

			StringArray.push("");
			StringArray.push("");

			StringArray.push("Frame Time:");
			StringArray.push(FrameTime.Sum.toFixed(3)+"ms");
			StringArray.push("Average:");
			StringArray.push(Timer.FrameAverage.toFixed(3)+"ms");
			StringArray.push("Max:");
			StringArray.push(Timer.FrameMax.toFixed(3)+"ms");

			StringArray.push("");
			StringArray.push("");

			StringArray.push("Call Average:");
			StringArray.push(Timer.CallAverage.toFixed(3)+"ms");
			StringArray.push("Call Count In Frame:");
			StringArray.push(FrameTime.CallCount);
			StringArray.push("Call Count Average:");
			StringArray.push((Timer.CallCount / AggregateInfo.TotalFrames()).toFixed(2));
			StringArray.push("Call Count Max:");
			StringArray.push( TimerInfo[nHoverToken].MaxCallCount + " @" + TimerInfo[nHoverToken].MaxCallCountFrame);

			StringArray.push("");
			StringArray.push("");

			StringArray.push("Exclusive Frame Time:");
			StringArray.push(FrameTime.ExclusiveSum.toFixed(3)+"ms");
			StringArray.push("Exclusive Average:");
			StringArray.push(Timer.ExclusiveFrameAverage.toFixed(3)+"ms");
			StringArray.push("Exclusive Max:");
			StringArray.push(Timer.ExclusiveFrameMax.toFixed(3)+"ms");

			StringArray.push("");
			StringArray.push("");

			StringArray.push("Group:");
			StringArray.push(Group.name);
			StringArray.push("Frame Time:");
			StringArray.push(GroupTime.Sum.toFixed(3)+"ms");
			StringArray.push("Frame Average:");
			StringArray.push(Group.FrameAverage.toFixed(3)+"ms");
			StringArray.push("Frame Max:");
			StringArray.push(Group.FrameMax.toFixed(3)+"ms");

			var HoverMeta = GatherHoverMetaCounters(nHoverToken, nHoverTokenIndex, nHoverTokenLogIndex, nHoverFrame);
			var HeaderMeta = 0;
			for(index in HoverMeta)
			{
				if(0 == HeaderMeta)
				{
					HeaderMeta = 1;
					StringArray.push("");
					StringArray.push("");
				}
				StringArray.push(""+index);
				StringArray.push(""+HoverMeta[index]);
			}

			var HoverLabel = GatherHoverLabels(nHoverToken, nHoverTokenIndex, nHoverTokenLogIndex, nHoverFrame);
			if(HoverLabel != undefined && HoverLabel.length > 0)
			{
				StringArray.push("");
				StringArray.push("");

				for(index in HoverLabel)
				{
					StringArray.push("Label:")
					StringArray.push(HoverLabel[index]);
				}
			}
		}
		var updatedRect = { x:0, y : 0, w : 0, h : 0 };
		DrawToolTip(StringArray, CanvasDetailedView, DetailedViewMouseX, DetailedViewMouseY + 20, Timer.color, 'white', updatedRect);

		if (FrameGroupInfo != undefined)
		{
			var frameVals = [];
			var minVal;
			var maxVal;
			for (var i = 0; i < Frames.length; ++i)
			{
				CalculateTimers(FrameGroupInfo, FrameTimerInfo, i, i + 1, nHoverToken, Timer.group);
				var FrameTime = FrameTimerInfo[nHoverToken];
				frameVals.push(FrameTime.Sum);
				if (i == 0)
				{
					minVal = FrameTime.Sum;
					maxVal = FrameTime.Sum;
				}
				else
				{
					if (FrameTime.Sum < minVal)
						minVal = FrameTime.Sum;
					if (FrameTime.Sum > maxVal)
						maxVal = FrameTime.Sum;
				}
			}

			var context = CanvasDetailedView.getContext('2d');
			context.fillStyle = Timer.color;
			var width = Frames.length;
			var widthMult = 1;
			if (width < 256)
			{
				widthMult = 256 / width;
				width = 256;
			}
			var left = updatedRect.x + updatedRect.w + 2;
			var top = updatedRect.y;
			var height = updatedRect.h;
			var CanvasRect = CanvasDetailedView.getBoundingClientRect();
			if (left + width >= CanvasRect.width)
			{
				left = updatedRect.x - width - 2;
			}
			context.fillRect(left - 2, top - 1, width + 4, height + 2);
			context.fillStyle = 'black';
			context.fillRect(left - 1, top, width + 2, height);

			var headerHeight = 2 * BoxHeight;
			var footerHeight = BoxHeight;
			context.textAlign = 'left';
			context.fillStyle = 'white';
			context.fillText('Frame ' + nHoverFrame, left + 1, top + BoxHeight - 2);
			context.fillText('Max ' + maxVal.toFixed(3) + 'ms', left + 1, top + 2 * BoxHeight - 2);
			context.fillText('Min ' + minVal.toFixed(3) + 'ms', left + 1, top + height - 2);
			var barMaxHeight = height - headerHeight - footerHeight;
			if (ZeroBasedBars)
                minVal = 0;
			for (var i = 0; i < Frames.length; ++i)
			{
				if (i == nHoverFrame)
					context.fillStyle = 'white';
				else
					context.fillStyle = Timer.color;
				var height = barMaxHeight * (frameVals[i] - minVal) / (maxVal - minVal);
				context.fillRect(left + i * widthMult, top + headerHeight + barMaxHeight - height, widthMult, height);
			}
		}
	}
	else if(nHoverCSCpu >= 0)
	{
		var StringArray = [];
		StringArray.push("Context Switch");
		StringArray.push("");
		StringArray.push("");
		StringArray.push("");
		StringArray.push("Cpu");
		StringArray.push("" + nHoverCSCpu);
		StringArray.push("Begin");
		StringArray.push("" + RangeCpu.Begin);
		StringArray.push("End");
		StringArray.push("" + RangeCpu.End);
		DrawToolTip(StringArray, CanvasDetailedView, DetailedViewMouseX, DetailedViewMouseY+20);
	}
	else if (DetailedViewMouseY <= g_Ext.xray.barYOffset && DetailedViewMouseY > 0 && !g_Loader.barDetailedTooltipBlocked &&
		g_Ext.xray.barEnabled && g_Ext.currentPlugin && g_Ext.currentPlugin.tooltipBarDetailed)
	{
		if (!g_Loader.barDetailedTooltipShown) {
			g_Loader.barDetailedTooltipShown = true;
			setTimeout(function() {
				g_Loader.barDetailedTooltipBlocked = true;
			}, 4500);
		}
		var StringArray = [];
		g_Ext.currentPlugin.tooltipBarDetailed.forEach(line => {
			StringArray.push(line);
			StringArray.push("");
		});
		DrawToolTip(StringArray, CanvasDetailedView, DetailedViewMouseX, DetailedViewMouseY+20);
	}
	ProfileLeave();
}

function FormatMeta(Value, Dec)
{
	if(!Value)
	{
		Value = "0";
	}
	else
	{
		Value = '' + Value.toFixed(Dec);
	}
	return Value;
}

function DrawBarView()
{
	ProfileEnter("DrawBarView");
	Invalidate++;
	nHoverToken = -1;
	nHoverFrame = -1;
	var context = CanvasDetailedView.getContext('2d');
	context.clearRect(0, 0, nWidth, nHeight);

	var Height = BoxHeight;
	var Width = nWidth;

	//clamp offset to prevent scrolling into the void
	var nTotalRows = 0;
	for(var groupid in GroupInfo)
	{
		if(GroupsAllActive || GroupsActive[GroupInfo[groupid].name])
		{
			nTotalRows += GroupInfo[groupid].TimerArray.length + 1;
		}
	}
	var nTotalRowPixels = nTotalRows * Height;
	var nFrameRows = nHeight - BoxHeight;
	if(nOffsetBarsY + nFrameRows > nTotalRowPixels && nTotalRowPixels > nFrameRows)
	{
		nOffsetBarsY = nTotalRowPixels - nFrameRows;
	}


	var Y = -nOffsetBarsY + BoxHeight;
	if(TimersGroups)
	{
		nOffsetBarsX = 0;
	}
	var XBase = -nOffsetBarsX;
	var nColorIndex = 0;

	context.fillStyle = 'white';
	context.font = Font;
	var bMouseIn = 0;
	var RcpReferenceTime = 1.0 / ReferenceTime;
	var CountWidth = 8 * FontWidth;
	var nMetaLen = TimerInfo[0].meta.length;
	var nMetaCharacters = 10;
	var InnerBoxHeight = BoxHeight-2;
	var TimerLen = 8; //todo: fix max digits.
	var TimerWidth = TimerLen * FontWidth;
	var nWidthBars = nBarsWidth+2;
	var nWidthMs = TimerWidth+2+10;



	for(var i = 0; i < nMetaLen; ++i)
	{
		if(nMetaCharacters < MetaNames[i].length)
			nMetaCharacters = MetaNames[i].length;
	}
	var nWidthMeta = nMetaCharacters * FontWidth + 6;
	function HeaderMouseHandle(XBegin, X, Header)
	{
		var bMouseIn = DetailedViewMouseY >= 0 && DetailedViewMouseY < BoxHeight && DetailedViewMouseX < X && DetailedViewMouseX > XBegin;
		if(bMouseIn)
		{
			SortColumnMouseOverNext = Header;
		}
	}
	function HeaderString(Header)
	{
		if(Header == SortColumnMouseOver)
		{
			return Header + (SortColumnOrderFlip ? '<' : '>');
		}
		else
		{
			return Header;
		}

	}
	function DrawHeaderSplit(Header)
	{
		context.fillStyle = 'white';
		context.fillText(HeaderString(Header), X, Height-FontAscent);
		var XBegin = X;
		X += nWidthBars;
		context.fillStyle = nBackColorOffset;
		X += nWidthMs;

		if(X >= NameWidth)
		{
			context.fillRect(X-3, 0, 1, nHeight);
		}

		HeaderMouseHandle(XBegin, X, Header);
	}
	function DrawHeaderSplitSingle(Header, Width)
	{
		context.fillStyle = 'white';
		context.fillText(HeaderString(Header), X, Height-FontAscent);
		var XBegin = X;
		X += Width;
		context.fillStyle = nBackColorOffset;
		if(X >= NameWidth)
		{
			context.fillRect(X-3, 0, 1, nHeight);
		}
		HeaderMouseHandle(XBegin, X, Header);
	}
	function DrawHeaderSplitLeftRight(HeaderLeft, HeaderRight, Width)
	{
		context.textAlign = 'left';
		context.fillStyle = 'white';
		context.fillText(HeaderLeft, X, Height-FontAscent);
		var XBegin = X;
		X += Width;
		context.textAlign = 'right';
		context.fillText(HeaderRight, X-5, Height-FontAscent);
		context.textAlign = 'left';
		context.fillStyle = nBackColorOffset;
		if(X >= NameWidth)
		{
			context.fillRect(X-3, 0, 1, nHeight);
		}
		HeaderMouseHandle(XBegin, X, HeaderLeft);
	}
	function DrawTimer(Value, Color)
	{
		var Prc = Value * RcpReferenceTime;
		var YText = Y+Height-FontAscent;
		if(Prc > 1)
		{
			Prc = 1;
		}
		context.fillStyle = Color;
		context.fillRect(X+1, Y+1, Prc * nBarsWidth, InnerBoxHeight);
		X += nWidthBars;
		context.fillStyle = 'white';
		context.fillText(("      " + Value.toFixed(2)).slice(-TimerLen), X, YText);
		X += nWidthMs;
	}
	function DrawMeta(Value, Width, Dec, YText)
	{
		Value = FormatMeta(Value, Dec);
		X += (FontWidth*Width);
		context.textAlign = 'right';
		context.fillText(Value, X-FontWidth, YText);
		context.textAlign = 'left';
	}


	function DrawTimerRow(timerid, showgroup)
	{
		var Timer = TimerInfo[timerid];
		var Average = Timer.average;
		var Max = Timer.max;
		var Min = Timer.min;
		var ExclusiveMax = Timer.exclmax;
		var ExclusiveAverage = Timer.exclaverage;
		var CallAverage = Timer.callaverage;
		var CallCount = Timer.callcount;
		var YText = Y+Height-FontAscent;
		X = NameWidth + XBase;

		nColorIndex = 1-nColorIndex;
		bMouseIn = DetailedViewMouseY >= Y && DetailedViewMouseY < Y + BoxHeight;
		if(bMouseIn)
		{
			nHoverToken = timerid;
		}
		context.fillStyle = bMouseIn ? nBackColorOffset : nBackColors[nColorIndex];
		context.fillRect(0, Y, Width, FontHeight+2);

		DrawTimer(Average, Timer.color);
		DrawTimer(Max,Timer.color);
		DrawTimer(Timer.total,Timer.color);
		DrawTimer(Min,Timer.color);
		DrawTimer(CallAverage,Timer.color);
		context.fillStyle = 'white';
		context.fillText(CallCount, X, YText);
		X += CountWidth;
		DrawTimer(ExclusiveAverage,Timer.color);
		DrawTimer(ExclusiveMax,Timer.color);

		if(TimersMeta)
		{
			context.fillStyle = 'white';
			for(var j = 0; j < nMetaLen; ++j)
			{
				DrawMeta(Timer.meta[j], MetaLengths[j], 0, YText);
				DrawMeta(Timer.metaagg[j]/AggregateInfo.Frames, MetaLengthsAvg[j], 2, YText);
				DrawMeta(Timer.metamax[j], MetaLengthsMax[j], 0, YText);
			}
		}
		context.fillStyle = bMouseIn ? nBackColorOffset : nBackColors[nColorIndex];
		context.fillRect(0, Y, NameWidth, Height);
		context.textAlign = 'right';
		context.fillStyle = Timer.color;
		context.fillText(Timer.name, NameWidth - 5, YText);
		context.textAlign = 'left';
		if(showgroup)
		{
			context.fillStyle = 'white';
			context.fillText(GroupInfo[Timer.group].name, 1, YText);
		}
	}
	function FilterMatch(FilterArray, value)
	{
		if(!FilterArray)
			return true;
		for(var i = 0; i < FilterArray.length; ++i)
		{
			var res = value.search(FilterArray[i]);
			if(res<0)
				return false;
		}
		return true;
	}
	if(SortColumn)
	{
		var OrderArray = new Array(TimerInfo.length);
		var KeyArray = new Array(TimerInfo.length);
		for(var idx in GroupOrder)
		{
			var Group = GroupInfo[idx];
			if((GroupsAllActive || GroupsActive[Group.name]) && FilterMatch(FilterGroup, Group.name))
			{
				var TimerArray = Group.TimerArray;
				for(var timerindex in TimerArray)
				{
					var timerid = TimerArray[timerindex];
					if(FilterMatch(FilterTimer, TimerInfo[timerid].name))
					{
						OrderArray.push(timerid);
					}
				}
			}
		}
		var KeyFunc = null;
		switch(SortColumn)
		{
			case 1: KeyFunc = function (a) { return TimerInfo[a].average; }; break;
			case 2: KeyFunc = function (a) { return TimerInfo[a].max; }; break;
			case 3: KeyFunc = function (a) { return TimerInfo[a].total; }; break;
			case 4: KeyFunc = function (a) { return TimerInfo[a].min; }; break;
			case 5: KeyFunc = function (a) { return TimerInfo[a].callaverage; }; break;
			case 6: KeyFunc = function (a) { return TimerInfo[a].callcount; }; break;
			case 7: KeyFunc = function (a) { return TimerInfo[a].exclaverage; }; break;
			case 8: KeyFunc = function (a) { return TimerInfo[a].exclmax; }; break;
		}

		var Flip = SortColumnOrderFlip == 1 ? -1 : 1;
		OrderArray.sort(function(a,b) { return Flip * (KeyFunc(b) - KeyFunc(a)); } );

		for(var i in OrderArray)
		{
			if(!TimerInfo[OrderArray[i]].name.startsWith("$UserToken_"))
			{
				DrawTimerRow(OrderArray[i], 1);
				Y += Height;
			}
		}
	}
	else if(2 == TimersGroups)
	{
		for(var i = 0; i < ThreadNames.length; ++i)
		{
			if((ThreadsActive[ThreadNames[i]] || ThreadsAllActive) && FilterMatch(FilterTimer, ThreadNames[i]))
			{
				var X = 0;
				var YText = Y+Height-FontAscent;
				bMouseIn = DetailedViewMouseY >= Y && DetailedViewMouseY < Y + BoxHeight;
				nColorIndex = 1-nColorIndex;
				context.fillStyle = bMouseIn ? nBackColorOffset : nBackColors[nColorIndex];
				context.fillRect(0, Y, Width, FontHeight+2);
				var ThreadColor = CSwitchColors[i % CSwitchColors.length];
				context.fillStyle = ThreadColor;
				context.fillText(ThreadNames[i], 1, YText);
				context.textAlign = 'left';
				Y += Height;
				for(var idx in GroupOrder)
				{
					var groupid = GroupOrder[idx];
					var Group = GroupInfo[groupid];
					var PerThreadTimerTotal = ThreadGroupTimeArray[i][groupid];
					var PerThreadTimer = PerThreadTimerTotal / AggregateInfo.Frames;
					if((PerThreadTimer > 0.0001|| PerThreadTimerTotal>0.1) && (GroupsAllActive || GroupsActive[Group.name]) && FilterMatch(FilterGroup, Group.name))
					{
						var GColor = GroupColors ? GroupInfo[groupid].color : 'white';
						var X = 0;
						nColorIndex = 1-nColorIndex;
						bMouseIn = DetailedViewMouseY >= Y && DetailedViewMouseY < Y + BoxHeight;
						context.fillStyle = bMouseIn ? nBackColorOffset : nBackColors[nColorIndex];
						context.fillRect(0, Y, Width, nHeight);
						context.fillStyle = GColor;
						context.textAlign = 'right';
						context.fillText(Group.name, NameWidth - 5, Y+Height-FontAscent);
						context.textAlign = 'left';
						X += NameWidth;
						DrawTimer(PerThreadTimer, GColor);
						X += nWidthBars + nWidthMs;	
						DrawTimer(PerThreadTimerTotal, GColor);

						Y += Height;
					}
				}
			}
		}
	}
	else
	{
		for(var idx in GroupOrder)
		{
			var groupid = GroupOrder[idx];
			var Group = GroupInfo[groupid];
			var GColor = GroupColors ? GroupInfo[groupid].color : 'white';
			if((GroupsAllActive || GroupsActive[Group.name]) && FilterMatch(FilterGroup, Group.name))
			{
				var TimerArray = Group.TimerArray;
				var X = XBase;
				nColorIndex = 1-nColorIndex;
				bMouseIn = DetailedViewMouseY >= Y && DetailedViewMouseY < Y + BoxHeight;
				context.fillStyle = bMouseIn ? nBackColorOffset : nBackColors[nColorIndex];
				context.fillRect(0, Y, Width, FontHeight+2);
				context.fillStyle = GColor;
				context.fillText(Group.name, 1, Y+Height-FontAscent);
				X += NameWidth;
				DrawTimer(Group.average, GColor);
				DrawTimer(Group.max, GColor);
				DrawTimer(Group.total, GColor);

				context.fillStyle = bMouseIn ? nBackColorOffset : nBackColors[nColorIndex];
				context.fillRect(0, Y, NameWidth, FontHeight+2);
				context.fillStyle = GColor;
				context.fillText(Group.name, 1, Y+Height-FontAscent);



				Y += Height;
				if(TimersGroups)
				{
					for(var i = 0; i < ThreadNames.length; ++i)
					{
						var PerThreadTimerTotal = ThreadGroupTimeArray[i][groupid];
						var PerThreadTimer = PerThreadTimerTotal / AggregateInfo.Frames;
						if((PerThreadTimer > 0.0001|| PerThreadTimerTotal>0.1) && (ThreadsActive[ThreadNames[i]] || ThreadsAllActive) && FilterMatch(FilterTimer, ThreadNames[i]))
						{
							var YText = Y+Height-FontAscent;
							bMouseIn = DetailedViewMouseY >= Y && DetailedViewMouseY < Y + BoxHeight;
							nColorIndex = 1-nColorIndex;
							context.fillStyle = bMouseIn ? nBackColorOffset : nBackColors[nColorIndex];
							context.fillRect(0, Y, Width, FontHeight+2);
							var ThreadColor = CSwitchColors[i % CSwitchColors.length];
							context.fillStyle = ThreadColor;
							context.textAlign = 'right';
							context.fillText(ThreadNames[i], NameWidth - 5, YText);
							context.textAlign = 'left';
							X = NameWidth;
							DrawTimer(PerThreadTimer, ThreadColor);
							X += nWidthBars + nWidthMs;	
							DrawTimer(PerThreadTimerTotal, ThreadColor);
							Y += Height;
						}
					}
				}
				else
				{
					for(var timerindex in TimerArray)
					{
						var timerid = TimerArray[timerindex];
						if(FilterMatch(FilterTimer, TimerInfo[timerid].name))
						{
							if(!TimerInfo[timerid].name.startsWith("$UserToken_"))
							{
								DrawTimerRow(timerid, 0);
								Y += Height;
							}
						}
					}			
				}
			}
		}
	}
	X = 0;
	context.fillStyle = nBackColorOffset;
	context.fillRect(0, 0, Width, Height);
	context.fillStyle = 'white';
	SortColumnMouseOverNext = null;

	if(TimersGroups)
	{
		if(2 == TimersGroups)
		{
			DrawHeaderSplitLeftRight(StrThread, StrGroup, NameWidth);
			DrawHeaderSplit(StrAverage);
		}
		else
		{
			DrawHeaderSplitLeftRight(StrGroup, StrThread, NameWidth);
			DrawHeaderSplit(StrAverage);
			DrawHeaderSplit(StrMax);
			DrawHeaderSplit(StrTotal);
		}
	}
	else
	{
		X = NameWidth + XBase;
		DrawHeaderSplit(StrAverage);
		DrawHeaderSplit(StrMax);
		DrawHeaderSplit(StrTotal);
		DrawHeaderSplit(StrMin);
		DrawHeaderSplit(StrCallAverage);
		DrawHeaderSplitSingle(StrCount, CountWidth);
		DrawHeaderSplit(StrExclAverage);
		DrawHeaderSplit(StrExclMax);
		if(TimersMeta)
		{
			for(var i = 0; i < nMetaLen; ++i)
			{
				DrawHeaderSplitSingle(MetaNames[i], MetaLengths[i] * FontWidth);
				DrawHeaderSplitSingle(MetaNames[i] + " Avg", MetaLengthsAvg[i] * FontWidth);
				DrawHeaderSplitSingle(MetaNames[i] + " Max", MetaLengthsMax[i] * FontWidth);
			}
		}
		X = 0;
		context.fillStyle = nBackColorOffset;
		context.fillRect(0, 0, NameWidth, Height);
		context.fillStyle = 'white';
	
		DrawHeaderSplitLeftRight(StrGroup, StrTimer, NameWidth);
	
	}

	ProfileLeave();
}

var CounterNameWidth = 100;
var CounterValueWidth = 100;
var CounterLimitWidth = 100;

var FormatCounterDefault = 0;
var FormatCounterBytes = 1;
var FormatCounterBytesExt = [ "b","kb","mb","gb","tb","pb", "eb","zb", "yb" ];

function FormatCounter(Format, Counter)
{
	if(!Counter)
	{
		return '0';
	}
	var Negative = 0;
	if(Counter < 0)
	{
		Counter = -Counter;
		Negative = 1;
		if(Counter < 0) // handle INT_MIN
		{
			Counter = -(Counter+1);
			if(Counter < 0)
			{
				return '?';
			}
		}
	}
	var str = Negative ? '-' :'' ;
	if(Format == FormatCounterDefault)
	{
		var Seperate = 0;
		var result = '';
		while (Counter)
		{
			if (Seperate)
			{
				result += '.';
			}
			Seperate = 1;
			for (var i = 0; Counter && i < 3; ++i)
			{
				var Digit = Math.floor(Counter % 10);
				Counter = Math.floor(Counter / 10);
				result += '' + Digit;
			}
		}

		for(var i = 0; i < result.length; ++i)
		{
			str += result[result.length-1-i];
		}
		return str;
	}
	else if(Format == FormatCounterBytes)
	{
		var Shift = 0;
		var Divisor = 1;
		var CountShifted = Counter >> 10;
		while(CountShifted)
		{
			Divisor <<= 10;
			CountShifted >>= 10;
			Shift++;
		}
		if(Shift)
		{
			return str + (Counter / Divisor).toFixed(2) + '' + FormatCounterBytesExt[Shift];
		}
		else
		{
			return str + Counter.toFixed(2) + '' + FormatCounterBytesExt[0];
		}
	}
	return '?'
}
function DrawCounterView()
{
	ProfileEnter("DrawCounterView");
	Invalidate++;
	nHoverToken = -1;
	nHoverFrame = -1;
	var context = CanvasDetailedView.getContext('2d');
	context.clearRect(0, 0, nWidth, nHeight);

	var Height = BoxHeight;
	var Width = nWidth;
	//clamp offset to prevent scrolling into the void
	var nTotalRows = CounterInfo.length;
	var nTotalRowPixels = nTotalRows * Height;
	var nFrameRows = nHeight - BoxHeight;
	if(nOffsetCountersY + nFrameRows > nTotalRowPixels && nTotalRowPixels > nFrameRows)
	{
		nOffsetCountersY = nTotalRowPixels - nFrameRows;
	}

	var CounterNameWidthTemp = 10;
	var CounterValueWidthTemp = 10;
	var CounterLimitWidthTemp = 10;

	var CounterWidth = 150;
	var Y = -nOffsetCountersY + BoxHeight;
	var X = 0;
	var nColorIndex = 0;
	context.fillStyle = 'white';
	context.font = Font;
	var bMouseIn = 0;
	function DrawHeaderSplitSingle(Header, Width)
	{
		context.fillStyle = 'white';
		context.fillText(Header, X, Height-FontAscent);
		X += Width;
		context.fillStyle = nBackColorOffset;
		context.fillRect(X-3, 0, 1, nHeight);
	}
	function DrawHeaderSplitSingleRight(Header, Width)
	{
		X += Width;
		context.fillStyle = 'white';
		context.textAlign  = 'right';
		context.fillText(Header, X - FontWidth, Height-FontAscent);
		context.fillStyle = nBackColorOffset;
		context.fillRect(X, 0, 1, nHeight);
		context.textAlign  = 'left';
	}
	var TimerLen = 6;
	var TimerWidth = TimerLen * FontWidth;
	nHoverCounter = -1;
	function CounterIndent(Level)
	{
		return Level * 4 * FontWidth;
	}
	function Max(a, b)
	{
		return a > b ? a : b;
	}

	function DrawCounterRecursive(Index)
	{
		var Counter = CounterInfo[Index];
		var Indent = CounterIndent(Counter.level);
		CounterNameWidthTemp = Max(CounterNameWidthTemp, Counter.name.length+1 + Indent / (FontWidth+1));
		CounterValueWidthTemp = Max(CounterValueWidthTemp, Counter.formatted.length);
		CounterLimitWidthTemp = Max(CounterLimitWidthTemp, Counter.formattedlimit.length);

		var X = 0;
		nColorIndex = 1-nColorIndex;
		var HeightExpanded = Counter.Expanded ? Height * 5 : Height

		bMouseIn = DetailedViewMouseY >= Y && DetailedViewMouseY < Y + HeightExpanded;
		if(bMouseIn)
		{
			nHoverCounter = Index;
		}
		var bgcolor = bMouseIn ? nBackColorOffset : nBackColors[nColorIndex];
		context.fillStyle = bgcolor;
		context.fillRect(0, Y, Width, HeightExpanded);
		context.fillStyle = 'white';
		var c = Counter.closed ? '*' : ' ';
		context.fillText(c + Counter.name, Indent, Y+Height-FontAscent);
		X += CounterNameWidth;
		X += CounterValueWidth - FontWidth;
		context.textAlign = 'right';
		context.fillText(Counter.formatted, X, Y+Height-FontAscent);
		context.textAlign = 'left';
		X += FontWidth * 4;
		var Y0 = Y + 1;
		if(Counter.limit != 0)
		{
			context.fillText(Counter.formattedlimit, X, Y+Height-FontAscent);
			X += CounterLimitWidth;
			var X0 = X + 1;
			context.fillStyle = 'white';
			context.fillRect(X0, Y0, Counter.boxprc * (CounterWidth-2), Height-2);
			context.fillStyle = bgcolor;
			context.fillRect(X0+1, Y0+1, Counter.boxprc * (CounterWidth-4), Height-4);
			context.fillStyle = 'cyan';
			context.fillRect(X0+1, Y0+1, Counter.counterprc * (CounterWidth-4), Height-4);
			X += CounterWidth + 10;
		}
		else
		{
			X += CounterLimitWidth;
			X += CounterWidth + 10;
		}
		if(Counter.historydata.length > 0)
		{
			var Prc = Counter.historyprc;
			var Data = Counter.historydata;

			context.fillStyle = 'cyan';
			context.strokeStyle = 'cyan';
			context.globalAlpha = 0.5;
			context.beginPath();
			var x = X;
			var YBase = Y0 + HeightExpanded-1;
			var YOffset = -(HeightExpanded-2);

			context.moveTo(X, Y0);
			for(var i = 0; i < Prc.length; ++i)
			{
				context.moveTo(x, YBase);
				context.lineTo(x, YBase + Prc[i] * YOffset);

				x += 1;
			}
			context.stroke();

			x = X;
			context.globalAlpha = 1.0;
			context.beginPath();
			context.moveTo(X, YBase);

			for(var i = 0; i < Prc.length; ++i)
			{
				context.lineTo(x, YBase + Prc[i] * YOffset);
				x += 1;
			}
			context.stroke();
			if(bMouseIn)
			{
				var MouseGraphX = Math.floor(DetailedViewMouseX - X);
				if(MouseGraphX >= 0 && MouseGraphX < Data.length)
				{
					context.fillStyle = 'white';
					var Formatted = FormatCounter(Counter.format, Data[MouseGraphX]);
					context.fillText(Formatted, X, Y+Height-FontAscent);
				}
				context.strokeStyle = 'orange';
				context.beginPath();
				var CrossX = X + MouseGraphX;
				var CrossY = YBase + Prc[MouseGraphX] * YOffset;
				context.moveTo(CrossX-2, CrossY-2);
				context.lineTo(CrossX+2, CrossY+2);
				context.moveTo(CrossX+2, CrossY-2);
				context.lineTo(CrossX-2, CrossY+2);
				context.stroke();

			}
			X += Prc.length + 5;
			context.fillStyle = 'white';
			context.fillText( FormatCounter(Counter.format, Counter.minvalue), X, Y + Height - FontAscent);
			X += CounterWidth + 5;
			context.fillText( FormatCounter(Counter.format, Counter.maxvalue), X, Y + Height - FontAscent);
			X += CounterWidth + 5;
		}

		Y += HeightExpanded;

		if(!Counter.closed)
		{
			var ChildIndex = Counter.firstchild;
			while(ChildIndex != -1)
			{
				DrawCounterRecursive(ChildIndex);
				ChildIndex = CounterInfo[ChildIndex].sibling;
			}
		}
	}

	for(var i = 0; i < CounterInfo.length; ++i)
	{
		if(CounterInfo[i].parent == -1)
		{
			DrawCounterRecursive(i);
		}
	}

	X = 0;
	context.fillStyle = nBackColorOffset;
	context.fillRect(0, 0, Width, Height);
	context.fillStyle = 'white';
	DrawHeaderSplitSingle('Name', CounterNameWidth);
	DrawHeaderSplitSingleRight('Value', CounterValueWidth + (FontWidth+1));
	DrawHeaderSplitSingle('Limit', CounterLimitWidth + CounterWidth + 3 * (FontWidth+1));





	var CounterNameWidthNew = CounterNameWidthTemp * (FontWidth+1);
	var CounterValueWidthNew = CounterValueWidthTemp * (FontWidth+1);
	var CounterLimitWidthNew = CounterLimitWidthTemp * (FontWidth+1);
	if(CounterNameWidthNew != CounterNameWidth || CounterValueWidthNew != CounterValueWidth || CounterLimitWidthNew != CounterLimitWidth)
	{
		// console.log('requesting redraw 0' + CounterNameWidthNew + '= ' + CounterNameWidth );
		// console.log('requesting redraw 1' + CounterValueWidthNew + '= ' + CounterValueWidth );
		// console.log('requesting redraw 2' + CounterLimitWidthNew + '= ' + CounterLimitWidth );
		CounterNameWidth = CounterNameWidthNew;
		CounterValueWidth = CounterValueWidthNew;
		CounterLimitWidth = CounterLimitWidthNew;
		Invalidate = 0;
	}

	ProfileLeave();
}


//preprocess context switch data to contain array per thread
function PreprocessContextSwitchCacheItem(ThreadId)
{
	var CSObject = CSwitchCache[ThreadId];
	if(ThreadId > 0 && !CSObject)
	{
		CSArrayIn = new Array();
		CSArrayOut = new Array();
		CSArrayCpu = new Array();
		var nCount = CSwitchTime.length;
		var j = 0;
		var TimeIn = -1.0;
		for(var i = 0; i < nCount; ++i)
		{	
			var ThreadIn = CSwitchThreadInOutCpu[j];
			var ThreadOut = CSwitchThreadInOutCpu[j+1];
			var Cpu = CSwitchThreadInOutCpu[j+2];
			if(TimeIn < 0)
			{
				if(ThreadIn == ThreadId)
				{
					TimeIn = CSwitchTime[i];
				}
			}
			else
			{
				if(ThreadOut == ThreadId)
				{
					var TimeOut = CSwitchTime[i];
					CSArrayIn.push(TimeIn);
					CSArrayOut.push(TimeOut);
					CSArrayCpu.push(Cpu);
					TimeIn = -1;
				}
			}
			j += 3;
		}
		CSObject = new Object();
		CSObject.Size = CSArrayIn.length;
		CSObject.In = CSArrayIn;
		CSObject.Out = CSArrayOut;
		CSObject.Cpu = CSArrayCpu;
		CSwitchCache[ThreadId] = CSObject;
	}

}
function PreprocessContextSwitchCache()
{
	ProfileEnter("PreprocessContextSwitchCache");
	var AllThreads = {};
	var nCount = CSwitchTime.length;
	for(var i = 0; i < nCount; ++i)
	{	
		var nThreadIn = CSwitchThreadInOutCpu[i];
		if(!AllThreads[nThreadIn])
		{
		    AllThreads[nThreadIn] = '' + nThreadIn;
		    var FoundThread = false;
		    for(var i = 0; i < ThreadIds.length; ++i)
		    {
		        if(ThreadIds[i] == nThreadIn)
		        {
		            FoundThread = true;
		        }
		    }
		    if(!FoundThread)
		    {
		        CSwitchOnlyThreads.push(nThreadIn);
		    }
		}
	}
	for(var i = 0; i < CSwitchOnlyThreads.length; ++i)
	{
		PreprocessContextSwitchCacheItem(CSwitchOnlyThreads[i]);
	}
	for(var i = 0; i < ThreadIds.length; ++i)
	{
		PreprocessContextSwitchCacheItem(ThreadIds[i]);	
	}
	function HandleMissingThread(a)
	{
		if(!CSwitchThreads[a])
		{
			CSwitchThreads[a] = {'tid':a, 'pid':-1, 't':'?', 'p':'?'}
		}
	}
	function CompareThreadInfo(a, b)
	{
		if(a.pid != b.pid)
			return b.pid - a.pid;
		else
			return a.tid - b.tid;
	}
	CSwitchOnlyThreads.sort( function(a, b){ 
		HandleMissingThread(a);
		HandleMissingThread(b);
		return CompareThreadInfo(CSwitchThreads[a], CSwitchThreads[b]); 
	} );

	ProfileLeave();
}

function DrawContextSwitchBars(context, ThreadId, fScaleX, fOffsetY, fDetailedOffset, nHoverColor, MinWidth, bDrawEnabled)
{
	ProfileEnter("DrawContextSwitchBars");
	var CSObject = CSwitchCache[ThreadId];
	if(CSObject)
	{
		var Size = CSObject.Size;		
		var In = CSObject.In;
		var Out = CSObject.Out;
		var Cpu = CSObject.Cpu;
		var nNumColors = CSwitchColors.length;
		for(var i = 0; i < Size; ++i)
		{
			var TimeIn = In[i];
			var TimeOut = Out[i];
			var ActiveCpu = Cpu[i];

			var X = (TimeIn - fDetailedOffset) * fScaleX;
			if(X > nWidth)
			{
				break;
			}
			var W = (TimeOut - TimeIn) * fScaleX;
			if(W > MinWidth && X+W > 0)
			{
				if(nHoverCSCpu == ActiveCpu || bDrawEnabled)
				{
					if(nHoverCSCpu == ActiveCpu)
					{
						context.fillStyle = nHoverColor;
					}
					else
					{
						context.fillStyle = CSwitchColors[ActiveCpu % nNumColors];
					}
					context.fillRect(X, fOffsetY, W, CSwitchHeight);
				}
				if(DetailedViewMouseX >= X && DetailedViewMouseX <= X+W && DetailedViewMouseY < fOffsetY+CSwitchHeight && DetailedViewMouseY >= fOffsetY)
				{
					nHoverCSCpuNext = ActiveCpu;
					RangeCpuNext.Begin = TimeIn;
					RangeCpuNext.End = TimeOut;
					RangeCpuNext.Thread = ThreadId;
					RangeGpuNext.Begin = RangeGpuNext.End = -1;
				}
			}
		}
	}
	ProfileLeave();
}

function SetHoverToken(nToken, nIndex, nLog)
{
	for(var i = Frames.length-1; i >= 0; --i)
	{
		var IndexStart = LodData[0].LogStart[i][nLog];
		if(nIndex >= IndexStart)
		{
			nHoverFrame = i;
			nHoverTokenNext = nToken;
			nHoverTokenIndexNext = nIndex - IndexStart;
			nHoverTokenLogIndexNext = nLog;
			break;
		}
	}
}

function DrawDetailedView(context, MinWidth, bDrawEnabled)
{
	if(bDrawEnabled)
	{
		DrawDetailedBackground(context);
	}

	var colors = [ '#ff0000', '#ff00ff', '#ffff00'];

	var barYOffset = g_Ext.xray.barEnabled ? g_Ext.xray.barYOffset : 0;
	var fScaleX = nWidth / fDetailedRange; 
	var fOffsetY = -nOffsetY + BoxHeight + barYOffset;
	nHoverTokenNext = -1;
	nHoverTokenLogIndexNext = -1;
	nHoverTokenIndexNext = -1;
	nHoverCounter += nHoverCounterDelta;
	if(nHoverCounter >= 255) 
	{
		nHoverCounter = 255;
		nHoverCounterDelta = -nHoverCounterDelta;
	}
	if(nHoverCounter < 128) 
	{
		nHoverCounter = 128;
		nHoverCounterDelta = -nHoverCounterDelta;
	}
	var nHoverHigh = nHoverCounter.toString(16);
	var nHoverLow = (127+255-nHoverCounter).toString(16);
	var nHoverColor = '#' + nHoverHigh + nHoverHigh + nHoverHigh;

	context.fillStyle = 'black';
	context.font = Font;
	var nNumLogs = Frames[0].ts.length;
	var fTimeEnd = fDetailedOffset + fDetailedRange;

	var FirstFrame = 0;
	for(var i = 0; i < Frames.length ; i++)
	{
		if(Frames[i].frameend < fDetailedOffset)
		{
			FirstFrame = i;
		}
	}
	var nMinTimeMs = MinWidth / fScaleX;
	{
		var Batches = new Array(TimerInfo.length);
		var BatchesXtra = new Array(TimerInfo.length); // Color intensities for Events
		var BatchesTxt = Array();
		var BatchesTxtPos = Array();
		var BatchesTxtColor = ['#ffffff', '#333333'];
		if(!ThreadY)
		{
			ThreadY = new Array(ThreadNames.length+1);
		}

		for(var i = 0; i < 2; ++i)
		{
			BatchesTxt[i] = Array();
			BatchesTxtPos[i] = Array();
		}
		for(var i = 0; i < Batches.length; ++i)
		{
			Batches[i] = Array();
			BatchesXtra[i] = Array();
		}
		for(nLog = 0; nLog < nNumLogs; nLog++)
		{
			var ThreadName = ThreadNames[nLog];
			ThreadY[nLog] = fOffsetY;
			if(ThreadsAllActive || ThreadsActive[ThreadName])
			{
				var LodIndex = 0;
				var MinDelta = 0;
				var NextLod = 1;
				while(NextLod < LodData.length && LodData[NextLod].MinDelta[nLog] < nMinTimeMs)
				{
					LodIndex = NextLod;
					NextLod = NextLod + 1;
					MinDelta = LodData[LodIndex].MinDelta[nLog];
				}
				if(LodIndex == LodData.length)
				{
					LodIndex = LodData.length-1;
				}
				if(DisableLod)
				{
					LodIndex = 0;
				}

				context.fillStyle = 'white';
				const MaxStackCapped = Math.min(g_MaxStack[nLog], window.MaxStackDepthToVisualize);
				const IsStackCapped = g_MaxStack[nLog] >= window.MaxStackDepthToVisualize;
				if (IsStackCapped) {
					ThreadName += ' [StackLimit/' + g_MaxStack[nLog] + ']';
					context.fillStyle = 'red';
				}
				if (ThreadClobbered.length > 0)
				{
					var capacity = ThreadBufferSizes[nLog];
					if (ThreadClobbered[nLog])
					{
						ThreadName += ' [Overflow/' + capacity + ']';
						context.fillStyle = 'red';
					}
					else
					{
						var lastFrame = Frames.length - 1;
						var len = Frames[lastFrame].LogEnd[nLog] - Frames[0].LogStart[nLog]
						ThreadName += ' [' + len + '/' + capacity + ']';
					}
				}
				fOffsetY += BoxHeight;
				context.fillText(ThreadName, 0, fOffsetY);
				if(nContextSwitchEnabled)
				{
					DrawContextSwitchBars(context, ThreadIds[nLog], fScaleX, fOffsetY, fDetailedOffset, nHoverColor, MinWidth, bDrawEnabled);
					fOffsetY += CSwitchHeight+1;
				}
				var MaxDepth = 1;
				var StackPos = 0;
				var Stack = Array(20);
				var Lod = LodData[LodIndex];

				var TypeArray = g_TypeArray[nLog];
				var TimeArray = g_TimeArray[nLog];
				var IndexArray = g_IndexArray[nLog];
				var LabelArray = g_LabelArray[nLog];
				var XtraArray = g_XtraArray[nLog];
				var GlobalArray = Lod.GlobalArray[nLog];

				var LocalFirstFrame = Frames[FirstFrame].FirstFrameIndex[nLog];
				var IndexStart = Lod.LogStart[LocalFirstFrame][nLog];
				var IndexEnd = GlobalArray.length;

				for(var j = IndexStart; j < IndexEnd; ++j)
				{
					var glob = GlobalArray[j];
					var type = TypeArray[glob];
					var index = IndexArray[glob];
					var time = TimeArray[glob];

					if(type == 1)
					{
						Stack[StackPos] = glob;
						StackPos++;
						if(StackPos > MaxDepth)
						{
							MaxDepth = StackPos;
						}
					}
					else if(type == 0)
					{
						if(StackPos>0)
						{
							StackPos--;
							var globstart = Stack[StackPos];
							var timestart = TimeArray[globstart];
							var timeend = time;
							var X = (timestart - fDetailedOffset) * fScaleX;
							var Y = fOffsetY + StackPos * BoxHeight;
							var W = (timeend-timestart)*fScaleX;

							if(StackPos < window.MaxStackDepthToVisualize && W > MinWidth && X < nWidth && X+W > 0)
							{
								const isMaxDepth = (StackPos == window.MaxStackDepthToVisualize - 1);
								
								if(bDrawEnabled || index == nHoverToken)
								{
									Batches[index].push(X);
									Batches[index].push(Y);
									Batches[index].push(W);
									DebugDrawQuadCount++;

									var XText = X < 0 ? 0 : X;
									var WText = W - (XText-X);
									if(XText + WText > nWidth)
									{
										WText = nWidth - XText;
									}
									var Name = LabelArray[globstart] ? LabelArray[globstart] : TimerInfo[index].name;
									var BarTextLen = Math.floor((WText-2)/FontWidth);
									var TimeText = TimeToMsString(timeend-timestart);
									var TimeTextLen = TimeText.length;
									if (isMaxDepth) {
										Name = "(STACK_LIMIT) " + Name;
									}

									var txNorm;
									if (g_Ext.xray.viewEnabled || g_Ext.xray.barEnabled) {
										var txEntry = XtraArray[globstart];
										txNorm = GetNormalizedFromTx(txEntry, false);
										BatchesXtra[index].push(txNorm);
										if (g_Ext.xray.viewEnabled && txNorm.value > 0 && g_Ext.currentPlugin) {
											Name = "(" + g_Ext.currentPlugin.decorate(txNorm.value) + ") " + Name;
										}
									}

									if(BarTextLen >= 2)
									{
										if(BarTextLen < Name.length)
											Name = Name.substr(0, BarTextLen);
										var txtidx = TimerInfo[index].textcolorindex;
										if (g_Ext.xray.viewEnabled) {
											// Dark scope = bright text and vise versa
											txtidx = txNorm.isDark ? 0 : 1;
										}
										var YPos = Y+BoxHeight-FontAscent;
										BatchesTxt[txtidx].push(Name);
										BatchesTxtPos[txtidx].push(XText+2);

										BatchesTxtPos[txtidx].push(YPos);
										DebugDrawTextCount++;
										if(BarTextLen - Name.length > TimeTextLen)
										{
											BatchesTxt[txtidx].push(TimeText);
											BatchesTxtPos[txtidx].push(XText+WText-2 - TimeTextLen * FontWidth);
											BatchesTxtPos[txtidx].push(YPos);
											DebugDrawTextCount++;
										}

									}
								}

								if(DetailedViewMouseX >= 0 && DetailedViewMouseY >= 0 &&
									DetailedViewMouseX >= X && DetailedViewMouseX <= X+W &&
									DetailedViewMouseY < Y+BoxHeight && DetailedViewMouseY >= Y)
								{
									RangeCpuNext.Begin = timestart;
									RangeCpuNext.End = timeend;
									RangeCpuNext.Thread = nLog;

									if(TypeArray[globstart+1] == 4 && TypeArray[glob+1] == 4)
									{
										RangeGpuNext.Begin = RangeCpuNext.Begin;
										RangeGpuNext.End = RangeCpuNext.End;
										RangeGpuNext.Thread = nLog;
										//cpu tick is stored following
										RangeCpuNext.Begin = TimeArray[globstart+1];
										RangeCpuNext.End = TimeArray[glob+1];
										RangeCpuNext.Thread = IndexArray[globstart+1];
									}
									else
									{
										RangeGpuNext.Begin = -1;
										RangeGpuNext.End = -1
									}

									SetHoverToken(index, glob, nLog)
								}
							}
							if(StackPos == 0 && time > fTimeEnd)
								break;											
						}
					}
				}
				fOffsetY += (1+MaxStackCapped) * BoxHeight;
			}
			ThreadY[nLog+1] = fOffsetY;
		}

		if (!g_Loader.hasUserInteracted) {
			var lines = [
				"Mouse drag = navigate",
				"Mouse wheel = zoom",
				"Ctrl(Cmd) + F = find"
			];
			if (IsPluginsTabVisible()) {
				lines.push("X key = X-Ray mode");
			}
			if (fOffsetY > nHeight) {
				lines.push("\u21D3 More threads below \u21D3");
			}
			var textSizeMax = 0;
			lines.forEach(line => {
				var textSize = context.measureText(line).width;
				textSizeMax = Math.max(textSizeMax, textSize);
			});
			lines.forEach((line, i) => {
				context.fillText(line, nWidth - textSizeMax - FontWidth, nHeight - 10 - BoxHeight * (lines.length - i));
			});
		}

		if(nContextSwitchEnabled) //non instrumented threads.
		{
			var CurrentPid = -112;
			var ContextSwitchThreads = CSwitchOnlyThreads;
			function DrawHeader(str, X, Y)
			{
				var width = str.length * FontWidth;
				context.globalAlpha = 0.5;
				context.fillStyle = 'grey';
				context.fillRect(X, Y-FontHeight + 2, width, FontHeight);
				context.globalAlpha = 1.0;
				context.fillStyle = 'white';
				context.fillText(str, X, Y);


			}
			for(var i = 0; i < ContextSwitchThreads.length; ++i)
			{
				var ThreadId = ContextSwitchThreads[i];
				var ThreadName = '' + ThreadId;
				var TI = CSwitchThreads[ThreadId];

				if(TI)
				{
					if(CurrentPid != TI.pid)
					{
						fOffsetY += BoxHeight + 1;
						CurrentPid = TI.pid;
						var str = TI.pid.toString(16) +':' +TI.p;
						DrawHeader(str, 0, fOffsetY+5);
						fOffsetY += BoxHeight + 1;
					}
				}

				DrawContextSwitchBars(context, ThreadId, fScaleX, fOffsetY, fDetailedOffset, nHoverColor, MinWidth, bDrawEnabled);

				if(TI)
				{
					DrawHeader(TI.tid.toString(16) +':' +TI.t, 10, fOffsetY+5);
				}
				fOffsetY += BoxHeight + 1;
			}
		}

		{
			for(var i = 0; i < Batches.length; ++i)
			{
				var a = Batches[i];
				if(a.length)
				{
					if(!DisableMerge)
					{
						for(var j = 0; j < a.length; j += 3)
						{						
							var X = a[j];
							var Y = a[j+1];
							var BaseWidth = j + 2;
							var W = a[BaseWidth];
							while(j+1 < a.length && W < 1)
							{
								var jnext = j+3;
								var XNext = a[jnext];
								var YNext = a[jnext+1];
								var WNext = a[jnext+2];
								var Delta = XNext - (X+W);
								var YDelta = Math.abs(Y - YNext);							
								if(Delta < 0.3 && YDelta < 0.5 && WNext < 1)
								{
									W = (XNext+WNext) - X;
									a[BaseWidth] = W;
									a[jnext+2] = 0;
									j += 3;
								}
								else
								{
									break;
								}

							}
						}
					}
					var off = 0.7;
					var off2 = 2*off;
					context.fillStyle = TimerInfo[i].colordark;
					for(var j = 0; j < a.length; j += 3)
					{						
						var X = a[j];
						var Y = a[j+1];
						var W = a[j+2];
						if(W >= 1)
						{
							context.fillRect(X, Y, W, BoxHeight-1);
						}
					}
	
					var origColor = (i == nHoverToken) ? nHoverColor : TimerInfo[i].color;
					context.fillStyle = origColor;
					for(var j = 0; j < a.length; j += 3)
					{
						var X = a[j];
						var Y = a[j+1];
						var W = a[j+2];

						var colorChanged = false;
						if (g_Ext.xray.viewEnabled) {
							var txNorm = BatchesXtra[i][j / 3];
							context.fillStyle = txNorm.color;
							colorChanged = true;
						}
						if(W > 0)
						{
							context.fillRect(X+off, Y+off, W-off2, BoxHeight-1-off2);
						}

						if (g_Ext.xray.viewEnabled || g_Ext.xray.barEnabled)
						{
							var txNorm = BatchesXtra[i][j / 3];
							// Top bar for the detailed view
							if(g_Ext.xray.barEnabled && (W > 0))
							{
								var thresholds = g_Ext.xray.calculatedLimits.barThresholds;
								var barIntensityCoef = (g_Ext.xray.mode == XRayModes.Count) ? thresholds.count : thresholds.sum;
								const grad255 = Math.floor(txNorm.grad255 * (1 - barIntensityCoef / 100));
								const color = Grad255ToColor(grad255);
								context.globalCompositeOperation = "lighter";
								context.fillStyle = color;
								context.fillRect(X+off, off, W-off2, BoxHeight-1-off2);
								context.globalCompositeOperation = "source-over";
								colorChanged = true;
							}
							// Small scopes highlighting
							var smallScopes = g_Ext.xray.smallScopesHighlighting;
							if(g_Ext.xray.viewEnabled && (W > 0) && (txNorm.grad01 > smallScopes.thresholdIntensity) && (W-off2 < smallScopes.thresholdWidth))
							{
								const extender = 3;
								context.globalCompositeOperation = "lighter";
								context.fillStyle = GradToColor(smallScopes.extraIntensity);
								context.fillRect(X+off-extender, Y+off-0, W-off2+extender*2, BoxHeight-1-off2+0*2);
								context.globalCompositeOperation = "source-over";
								colorChanged = true;
							}
						} // xray.viewEnabled

						if (colorChanged) {
							context.fillStyle = origColor;
						}
					} // j
				} // if (Batches[i].length)
			}	
		}
		for(var i = 0; i < BatchesTxt.length; ++i)
		{
			context.fillStyle = BatchesTxtColor[i];
			var TxtArray = BatchesTxt[i];
			var PosArray = BatchesTxtPos[i];
			for(var j = 0; j < TxtArray.length; ++j)
			{
				var k = j * 2;
				context.fillText(TxtArray[j], PosArray[k],PosArray[k+1]);
			}
		}

	}
}
function DrawTextBox(context, text, x, y, align, bgColor)
{
	var textsize = context.measureText(text).width;
	var offsetx = 0;
	var offsety = -FontHeight;
	if(align == 'center')
	{
		offsetx = -textsize / 2.0;
	}
	else if(align == 'right')
	{
		offsetx = -textsize;
	}
	context.fillStyle = (bgColor != undefined) ? bgColor : nBackColors[0];
	context.fillRect(x + offsetx, y + offsety, textsize+2, FontHeight + 2);
	context.fillStyle = 'white';
	context.fillText(text, x, y);

}
function DrawRange(context, Range, ColorBack, ColorFront, Name)
{
	var fBegin = Range.Begin;
	var fEnd = Range.End;
	var OffsetTop = Range.YBegin;
	var OffsetBottom = Range.YEnd;
	if(fBegin < fEnd)
	{
		var MarginTop = 0.5 * FontHeight;
		var MarginBottom = nHeight - 1.5 * FontHeight;
		if(OffsetTop < MarginTop)
			OffsetTop = MarginTop;
		if(OffsetBottom > MarginBottom)
			OffsetBottom = MarginBottom;
		var fRulerOffset = FontHeight * 0.5;
		var fScaleX = nWidth / fDetailedRange; 
		var X = (fBegin - fDetailedOffset) * fScaleX;
		var YSpace = (FontHeight+2);
		var Y = OffsetTop;
		var YBottom = OffsetBottom;
		var W = (fEnd - fBegin) * fScaleX;
		context.globalAlpha = 0.1;
		context.fillStyle = ColorBack;
		context.fillRect(X, OffsetTop + fRulerOffset, W, OffsetBottom - OffsetTop);
		context.globalAlpha = 1;
		context.strokeStyle = ColorFront;
		context.beginPath();
		context.moveTo(X, 0);
		context.lineTo(X, nHeight);
		context.moveTo(X+W, 0);
		context.lineTo(X+W, nHeight);
		context.stroke();
		var Duration = (fEnd - fBegin).toFixed(2) + "ms";
		var Center = ((fBegin + fEnd) / 2.0) - fDetailedOffset;
		var DurationWidth = context.measureText(Duration+ "   ").width;

		context.fillStyle = 'white';
		context.textAlign = 'right';
		var TextPosY = Y + YSpace;
		DrawTextBox(context, fBegin.toFixed(2), X-3, TextPosY, 'right');
		var YS = [Y, YBottom];
		for(var i = 0; i < YS.length; ++i)
		{
			var Y = YS[i];
			var Y0 = Y + fRulerOffset;
			var W0 = W - DurationWidth + FontWidth*1.5;
			if(W0 > 6)
			{
				context.textAlign = 'center';
				DrawTextBox(context, Duration,Center * fScaleX, Y + YSpace, 'center');
				W0 = W0 / 2.0;
				var X0 = X + W0;
				var X1 = X + W - W0;
				context.strokeStyle = ColorFront;
				context.beginPath();
				context.moveTo(X, Y0);
				context.lineTo(X0, Y0);
				context.moveTo(X0, Y0-2);
				context.lineTo(X0, Y0+2);
				context.moveTo(X1, Y0-2);
				context.lineTo(X1, Y0+2);
				context.moveTo(X1, Y0);
				context.lineTo(X + W, Y0);
				context.stroke();
			}
			else
			{
				if(i == 1)
				{
					context.textAlign = 'right';
					DrawTextBox(context, Duration, X - 3, Y0, 'right');
					context.textAlign = 'left';
					DrawTextBox(context, Duration, X + W + 2, Y0, 'left');
				}
				context.strokeStyle = ColorFront;
				context.beginPath();
				context.moveTo(X, Y0);
				context.lineTo(X+W, Y0);
				context.stroke();
			}
		}
		context.textAlign = 'left';
		DrawTextBox(context, fEnd.toFixed(2), X + W + 2, TextPosY, 'left');
		DrawTextBox(context, Name, X + W + 2, OffsetTop + YSpace + FontHeight, 'left');
	}
	return 1;
}

function DrawDetailed(Animation)
{
	if(AnimationActive != Animation || !Initialized)
	{
		return;
	}
	ProfileEnter("DrawDetailed");
	DebugDrawQuadCount = 0;
	DebugDrawTextCount = 0;
	nHoverCSCpuNext = -1;

	RangeCpuNext = RangeInit();
	RangeGpuNext = RangeInit();
	RangeGpu = RangeInit();

	var start = new Date();
	nDrawCount++;

	var context = CanvasDetailedView.getContext('2d');
	var offscreen = CanvasDetailedOffscreen.getContext('2d');
	var fScaleX = nWidth / fDetailedRange; 
	var fOffsetY = -nOffsetY + BoxHeight;

	if(DetailedRedrawState.fOffsetY == fOffsetY && DetailedRedrawState.fDetailedOffset == fDetailedOffset && DetailedRedrawState.fDetailedRange == fDetailedRange && !KeyCtrlDown && !KeyShiftDown && !MouseDragButton)
	{
		Invalidate++;
	}
	else
	{
		Invalidate = 0;
		DetailedRedrawState.fOffsetY = fOffsetY;
		DetailedRedrawState.fDetailedOffset = fDetailedOffset;
		DetailedRedrawState.fDetailedRange = fDetailedRange;
	}
	if(nHoverTokenDrawn != nHoverToken)
	{
		Invalidate = 1;
	}
	nHoverTokenDrawn = nHoverToken;

	if(Invalidate == 0) //when panning, only draw bars that are a certain width to keep decent framerate
	{
		context.clearRect(0, 0, CanvasDetailedView.width, CanvasDetailedView.height);
		DrawDetailedView(context, nMinWidthPan, true);
		ProfileRedraw0++;
	}
	else if(Invalidate == 1) //draw full and store
	{
		offscreen.clearRect(0, 0, CanvasDetailedView.width, CanvasDetailedView.height);
		DrawDetailedView(offscreen, nMinWidth, true);
		OffscreenData = offscreen.getImageData(0, 0, CanvasDetailedOffscreen.width, CanvasDetailedOffscreen.height);
		ProfileRedraw1++;
	}
	else//reuse stored result untill next time viewport is changed.
	{
		context.clearRect(0, 0, CanvasDetailedView.width, CanvasDetailedView.height);
		context.putImageData(OffscreenData, 0, 0);
		DrawDetailedView(context, nMinWidth, false);
		ProfileRedraw2++;
	}

	if(KeyShiftDown || KeyCtrlDown || MouseDragButton || MouseDragSelectRange() || ZoomActive)
	{
		nHoverToken = -1;
		nHoverTokenIndex = -1;
		nHoverTokenLogIndex = -1;
		RangeCpu = RangeInit();
		RangeGpu = RangeInit();
	}
	else
	{
		nHoverToken = nHoverTokenNext;
		nHoverTokenIndex = nHoverTokenIndexNext;
		nHoverTokenLogIndex = nHoverTokenLogIndexNext;
		if(RangeValid(RangeCpuHistory))
		{
			RangeCopy(RangeCpu, RangeCpuHistory);
			RangeCopy(RangeGpu, RangeGpuHistory);
		}
		else
		{
			RangeCopy(RangeCpu, RangeCpuNext);
			RangeCopy(RangeGpu, RangeGpuNext);
		}
	}

	var barYOffset = g_Ext.xray.barEnabled ? g_Ext.xray.barYOffset : 0;
	DrawTextBox(context, TimeToMsString(fDetailedOffset), 0, FontHeight + barYOffset, 'left');
	context.textAlign = 'right';
	DrawTextBox(context, TimeToMsString(fDetailedOffset + fDetailedRange), nWidth, FontHeight + barYOffset, 'right');
	if (g_Ext.xray.barEnabled && g_Ext.currentPlugin) {
		// Top bar text
		var eventNames = [];
		g_Ext.typeLookup.forEach(function(entry) {
			if (entry.IsActive() && !entry.isBackground) {
				entry.subSelections.forEach(function(sel, i) {
					if (sel) {
						eventNames.push(entry.subnames[i]);
					}
				});
			}
		});
		var eventNamesJoin = eventNames.join('|');
		var actionSign = (g_Ext.xray.mode == XRayModes.Count) ? "#" : "\u2211";
		var barText = g_Ext.currentPlugin.category + "[" + eventNamesJoin + "]" + actionSign;
		DrawTextBox(context, barText, nWidth, FontHeight, 'right', '#000000');
	}
	context.textAlign = 'left';

	var YBegin = ThreadY[fRangeThreadIdNext];
	var YEnd = ThreadY[fRangeThreadIdNext+1];
	var YBeginGpu = YBegin;
	var YEndGpu = YEnd;
	function RangeSet(R)
	{
		if(R.Thread >= 0)
		{
			R.YBegin = ThreadY[R.Thread];
			R.YEnd = ThreadY[R.Thread + 1];
		}
		else
		{
			R.YBegin = 0;
			R.YEnd = nHeight;
		}
	}
	RangeSet(RangeSelect);
	RangeSet(RangeCpu);
	RangeSet(RangeGpu);

	var Offset = 0;
	// Spans in the detailed view
	for (const spanName in g_Ext.spans) {
		g_Ext.spans[spanName].forEach(function(span) {
			var spanRange = RangeInit();
			spanRange.Begin = span.tsBegin;
			spanRange.End = span.tsEnd;
			RangeSet(spanRange);
			Offset = DrawRange(context, spanRange, span.colorBg, span.colorLine, span.name);
		});
	}

	Offset = DrawRange(context, RangeSelect, '#59d0ff', '#00ddff', "Selection");
	Offset = DrawRange(context, RangeCpu, '#009900', '#00ff00', "Cpu");
	Offset = DrawRange(context, RangeGpu, '#996600', '#775500', "Gpu");

	nHoverCSCpu = nHoverCSCpuNext;
	ProfileLeave();
}
function ZoomToHighlight(NoGpu)
{
	// In XRay mode, display events on scope click instead of zooming in
	if (g_Ext.xray.viewEnabled && g_Ext.currentPlugin && g_Ext.currentPlugin.display &&
		NoGpu == undefined && nHoverToken != -1) {
		ShowEvents(true);
		return;
	}

	if(RangeValid(RangeGpu) && !NoGpu)
	{
		ZoomTo(RangeGpu.Begin, RangeGpu.End);
	}
	else if(RangeValid(RangeCpu))
	{
		ZoomTo(RangeCpu.Begin, RangeCpu.End);
	}
	RangeCpu = RangeInit();
	RangeGpu = RangeInit();
}

function MoveToNext(Direction) //1 forward, -1 backwards
{
	var fTimeBegin, fTimeEnd, nLog;
	var Index = nHoverToken;

	if(nHoverToken != -1 && nHoverTokenLogIndex != -1)
	{
		fTimeBegin = RangeCpu.Begin;
		fTimeEnd = RangeCpu.End;
		nLog = nHoverTokenLogIndex;
	}
	else if(RangeValid(RangeSelect))
	{
		fTimeBegin = RangeSelect.Begin;
		fTimeEnd = RangeSelect.End;
		nLog = RangeSelect.Thread;
		Index = RangeSelect.Index;
	}
	else
	{
		return;
	}
	if(nLog<0)
	{
		return;
	}
	var Forward = Direction && Direction < 0 ? 0 : 1;
	var bFound = false;
	var nStackPos = 0;
	var fResultTimeBegin, fResultTimeEnd;
	var TypeBegin = Forward ? 1 : 0;
	var TypeEnd = Forward ? 0 : 1;
	var SearchTimeBegin = Forward ? fTimeBegin : fTimeEnd;

	var istart = Forward ? 0 : Frames.length-1;
	var iend = Forward ? Frames.length : -1;
	var idelta = Forward ? 1 : -1;
	for(var i = istart; i != iend; i += idelta)
	{
		var fr = Frames[i];
		var ts = fr.ts[nLog];
		var ti = fr.ti[nLog];
		var tt = fr.tt[nLog];
		var jstart = Forward ? 0 : ts.length-1;
		var jend = Forward ? ts.length : -1;
		var jdelta = Forward ? 1 : -1;
		for(var j = jstart; j != jend; j += jdelta)
		{
			if(!bFound)
			{
				if(tt[j] == TypeBegin && Index == ti[j])
				{
					if(SearchTimeBegin == ts[j])
					{
						bFound = true;
					}
				}
			}
			else
			{
				if(Index == ti[j])
				{
					var type = tt[j];
					if(type == TypeBegin)
					{
						if(0 == nStackPos)
						{
							fResultTimeBegin = ts[j];
						}
						nStackPos++;
					}
					else if(type == TypeEnd && nStackPos)
					{
						nStackPos--;
						if(0 == nStackPos)
						{
							fResultTimeEnd = ts[j];
							if(0 == Forward)
							{
								var Tmp = fResultTimeBegin;
								fResultTimeBegin = fResultTimeEnd;
								fResultTimeEnd = Tmp;
							}
							RangeSelect.Begin = fResultTimeBegin;
							RangeSelect.End = fResultTimeEnd;
							RangeSelect.Thread = nLog;
							RangeSelect.Index = Index;
							MoveTo(fResultTimeBegin,fResultTimeEnd);
							return;
						}
					}
				}
			}
		}
	}
}

function MoveTo(fMoveBegin, fMoveEnd, YTop, YBottom)
{
	var nOffsetYBottom = YBottom - nHeight;
	var nOffsetYDest = nOffsetY;
	if(nOffsetYDest < nOffsetYBottom)
	{
		nOffsetYDest = nOffsetYBottom;
	}
	if(nOffsetYDest > YTop)
	{
		nOffsetYDest = YTop;
	}
	var fRange = fDetailedRange;
	var fMinRange = (fMoveEnd-fMoveBegin) * 2.0;
	if(fRange < fMinRange)
	{
		fRange = fMinRange;
	}
	var fMoveCenter = (fMoveBegin + fMoveEnd) * 0.5;
	fMoveBegin = fMoveCenter - 0.5 * fRange;
	fMoveEnd = fMoveCenter + 0.5 * fRange;
	var nOffset;
	if(nOffsetYDest != nOffsetY)
		nOffset = nOffsetYDest;
	ZoomTo(fMoveBegin, fMoveEnd, nOffsetYDest, -1);
}
function ZoomTo(fZoomBegin, fZoomEnd, OffsetYDest, ZoomTime)
{
	if(fZoomBegin < fZoomEnd)
	{
		AnimationActive = true;
		var fDetailedOffsetOriginal = fDetailedOffset;
		var fDetailedRangeOriginal = fDetailedRange;
		var fDetailedOffsetTarget = fZoomBegin;
		var fDetailedRangeTarget = fZoomEnd - fZoomBegin;
		var OffsetYOriginal = nOffsetY;
		var OffsetYTarget = OffsetYDest;
		var TimestampStart = new Date();
		var count = 0;
		if(!ZoomTime)
		{			
			ZoomTime = ZOOM_TIME;
		}

		function ZoomFunc(Timestamp)
		{
			ZoomActive = 1;
			var fPrc = (new Date() - TimestampStart) / (ZoomTime * 1000.0);
			if(fPrc > 1.0 || ZoomTime < 0.01)
			{
				fPrc = 1.0;
			}
			fPrc = Math.pow(fPrc, 0.3);
			fDetailedOffset = fDetailedOffsetOriginal + (fDetailedOffsetTarget - fDetailedOffsetOriginal) * fPrc;
			fDetailedRange = fDetailedRangeOriginal + (fDetailedRangeTarget - fDetailedRangeOriginal) * fPrc;
			if(OffsetYDest)
			{
				nOffsetY = OffsetYOriginal + (OffsetYTarget - OffsetYOriginal) * fPrc;
			}
			DrawDetailed(true);
			if(fPrc >= 1.0)
			{
				AnimationActive = false;
				fDetailedOffset = fDetailedOffsetTarget;
				fDetailedRange = fDetailedRangeTarget;
				if(OffsetYDest)
				{
					nOffsetY = OffsetYTarget;
				}
			}
			else
			{
				requestAnimationFrame(ZoomFunc);
			}
		}
		requestAnimationFrame(ZoomFunc);
	}
}
function RequestRedraw()
{
	Invalidate = 0;
	Draw(1);
}

function Draw(RedrawMode)
{
	if (!g_Loader.pageReady)
		return;
	
	if(ProfileMode)
	{
		ProfileModeClear();
		ProfileEnter("Total");
	}
	if(RedrawMode == 1)
	{
		if(Mode == ModeTimers)
		{
			DrawBarView();
			DrawHoverToolTip();
		}
		else if(Mode == ModeDetailed)
		{
			DrawDetailed(false);
			DrawHoverToolTip();
		}
		else if(Mode == ModeCounters)
		{
			DrawCounterView();
			DrawHoverToolTip();
		}
	}
	DrawDetailedFrameHistory();

	if(ProfileMode)
	{
		ProfileLeave();
		ProfileModeDraw(CanvasDetailedView);
	}
}

function AutoRedraw(Timestamp)
{
	var RedrawMode = 0;
	if(Mode == ModeDetailed)
	{
		if(ProfileMode == 2 || ((nHoverCSCpu >= 0 || nHoverToken != -1) && !KeyCtrlDown && !KeyShiftDown && !MouseDragButton)||(Invalidate<2 && !KeyCtrlDown && !KeyShiftDown && !MouseDragButton))
		{
			RedrawMode = 1;
		}
	}
	else
	{
		if(Invalidate < 1)
		{
			RedrawMode = 1;
		}
	}
	if(RedrawMode)
	{
		Draw(RedrawMode);
	}
	else if(FlashFrameCounter>0)
	{
		Draw(0);
	}
	requestAnimationFrame(AutoRedraw);
}


function ZoomGraph(nZoom)
{
	var fOldRange = fDetailedRange;
	if(nZoom>0)
	{
		fDetailedRange *= Math.pow(nModDown ? 1.40 : 1.03, nZoom);
	}
	else
	{
		var fNewDetailedRange = fDetailedRange / Math.pow((nModDown ? 1.40 : 1.03), -nZoom);
		if(fNewDetailedRange < 0.0001) //100ns
			fNewDetailedRange = 0.0001;
		fDetailedRange = fNewDetailedRange;
	}

	var fDiff = fOldRange - fDetailedRange;
	var fMousePrc = DetailedViewMouseX / nWidth;
	if(fMousePrc < 0)
	{
		fMousePrc = 0;
	}
	fDetailedOffset += fDiff * fMousePrc;
	
	g_Loader.hasUserInteracted = true;
}

function MeasureFont()
{
	var context = CanvasDetailedView.getContext('2d');
	context.font = Font;
	FontWidth = context.measureText('W').width;

}
function ResizeCanvas() 
{
	DPR = window.devicePixelRatio;
	nHistoryHeight = nHistoryHeightOrig / (1 + (DPR - 1) * 0.4);
	nWidth = window.innerWidth;
	nHeight = window.innerHeight - nHistoryHeight-2;

	if(DPR)
	{
		CanvasDetailedView.style.width = nWidth + 'px'; 
		CanvasDetailedView.style.height = nHeight + 'px';
		CanvasDetailedView.width = nWidth * DPR;
		CanvasDetailedView.height = nHeight * DPR;
		CanvasHistory.style.width = window.innerWidth + 'px';
		CanvasHistory.style.height = nHistoryHeight + 'px';
		CanvasHistory.width = window.innerWidth * DPR;
		CanvasHistory.height = nHistoryHeight * DPR;
		CanvasHistory.getContext('2d').scale(DPR,DPR);
		CanvasDetailedView.getContext('2d').scale(DPR,DPR);

		CanvasDetailedOffscreen.style.width = nWidth + 'px';
		CanvasDetailedOffscreen.style.height = nHeight + 'px';
		CanvasDetailedOffscreen.width = nWidth * DPR;
		CanvasDetailedOffscreen.height = nHeight * DPR;
		CanvasDetailedOffscreen.getContext('2d').scale(DPR,DPR);

	}
	else
	{
		DPR = 1;
		CanvasDetailedView.width = nWidth;
		CanvasDetailedView.height = nHeight;
		CanvasDetailedOffscreen.width = nWidth;
		CanvasDetailedOffscreen.height = nHeight;
		CanvasHistory.width = window.innerWidth;
	}
	RequestRedraw();
}

var MouseDragOff = 0;
var MouseDragDown = 1;
var MouseDragUp = 2;
var MouseDragMove = 3;
var MouseDragState = MouseDragOff;
var MouseDragTarget = 0;
var MouseDragButton = 0;
var MouseDragKeyShift = 0;
var MouseDragKeyCtrl = 0;
var MouseDragX = 0;
var MouseDragY = 0;
var MouseDragXLast = 0;
var MouseDragYLast = 0;
var MouseDragXStart = 0;
var MouseDragYStart = 0;

function clamp(number, min, max)
{
  return Math.max(min, Math.min(number, max));
}

function MouseDragPan()
{
	return MouseDragButton == 1 || MouseDragKeyShift;
}
function MouseDragSelectRange()
{
	return MouseDragState == MouseDragMove && (MouseDragButton == 3 || (MouseDragKeyShift && MouseDragKeyCtrl));
}
function MouseHandleDrag()
{
	if(MouseDragTarget == CanvasDetailedView)
	{
		if(Mode == ModeDetailed)
		{
			if(MouseDragSelectRange())
			{
				var xStart = MouseDragXStart;
				var xEnd = MouseDragX;
				if(xStart > xEnd)
				{
					var Temp = xStart;
					xStart = xEnd;
					xEnd = Temp;
				}
				if(xEnd - xStart > 1)
				{
					RangeCpu.Begin = fDetailedOffset + fDetailedRange * (xStart / nWidth);
					RangeCpu.End = fDetailedOffset + fDetailedRange * (xEnd / nWidth);
					RangeSelect.Begin = fDetailedOffset + fDetailedRange * (xStart / nWidth);
					RangeSelect.End = fDetailedOffset + fDetailedRange * (xEnd / nWidth);
					RangeSelect.Thread = -1;
					RangeSelect.Index = -1;
				}
			}
			else if(MouseDragPan())
			{
				var X = MouseDragX - MouseDragXLast;
				var Y = MouseDragY - MouseDragYLast;
				if(X)
				{
					fDetailedOffset += -X * fDetailedRange / nWidth;
				}
				nOffsetY -= Y;
				if(nOffsetY < 0)
				{
					nOffsetY = 0;
				}
			}
			else if(MouseDragKeyCtrl)
			{
				if(MouseDragY != MouseDragYLast)
				{
					ZoomGraph(MouseDragY - MouseDragYLast);
				}
			}
		}
		else if(Mode == ModeTimers)
		{
			if(MouseDragKeyShift || MouseDragButton == 1)
			{
				var X = MouseDragX - MouseDragXLast;
				var Y = MouseDragY - MouseDragYLast;
				nOffsetBarsY -= Y;
				nOffsetBarsX -= X;
				if(nOffsetBarsY < 0)
				{
					nOffsetBarsY = 0;
				}
				if(nOffsetBarsX < 0)
				{
					nOffsetBarsX = 0;
				}
			}
		}
		else if(Mode == ModeCounters)
		{
			if(MouseDragKeyShift || MouseDragButton == 1)
			{
				var Y = MouseDragY - MouseDragYLast;
				nOffsetCountersY -= Y;
				if(nOffsetCountersY < 0)
				{
					nOffsetCountersY = 0;
				}
			}
		}

	}
	else if(MouseDragTarget == CanvasHistory)
	{
		function HistoryFrameTime(x)
		{
			var NumFrames = Frames.length;
			var fBarWidth = nWidth / NumFrames;
			var Index = clamp(Math.floor(NumFrames * x / nWidth), 0, NumFrames-1);
			var Lerp = clamp((x/fBarWidth - Index) , 0, 1);
			var time = Frames[Index].framestart + (Frames[Index].frameend - Frames[Index].framestart) * Lerp;
			return time;
		}
		if(MouseDragSelectRange())
		{
			RangeCpu = RangeInit();
			RangeGpu = RangeInit();

			var xStart = MouseDragXStart;
			var xEnd = MouseDragX;
			if(xStart > xEnd)
			{
				var Temp = xStart;
				xStart = xEnd;
				xEnd = Temp;
			}
			if(xEnd - xStart > 2)
			{
				var timestart = HistoryFrameTime(xStart);
				var timeend = HistoryFrameTime(xEnd);
				fDetailedOffset = timestart;
				fDetailedRange = timeend-timestart;
			}
		}
		else if(MouseDragPan())
		{
			var Time = HistoryFrameTime(MouseDragX);
			fDetailedOffset = Time - fDetailedRange / 2.0;
		}
	}
}
function MouseHandleDragEnd()
{
	if(MouseDragTarget == CanvasDetailedView)
	{

	}
	else if(MouseDragTarget == CanvasHistory)
	{
		if(!MouseDragSelectRange() && !MouseDragPan())
		{
			ZoomToHighlight(1);
		}
	}
}

function MouseHandleDragClick()
{
	if(MouseDragTarget == CanvasDetailedView)
	{
		if(Mode == ModeCounters)
		{
			if(nHoverCounter != -1)
			{
				if(CounterInfo[nHoverCounter].firstchild != -1)
				{
					CounterInfo[nHoverCounter].closed = !CounterInfo[nHoverCounter].closed;
				}
				else
				{
					CounterInfo[nHoverCounter].Expanded = !CounterInfo[nHoverCounter].Expanded;
				}
				Draw(1);
			}
		}
		else
		{
			ZoomToHighlight();
		}
	}
	else if(MouseDragTarget == CanvasHistory)
	{
		if(Mode == ModeDetailed)
		{
			ZoomToHighlight(1);
		}
	}
}

function MapMouseButton(Event)
{
	if(Event.button == 1 || Event.which == 1)
	{
		return 1;
	}
	else if(Event.button == 3 || Event.which == 3)
	{
		return 3;
	}
	else
	{
		return 0;
	}
}

function MouseDragReset()
{
	MouseDragState = MouseDragOff;
	MouseDragTarget = 0;
	MouseDragKeyShift = 0;
	MouseDragKeyCtrl = 0;
	MouseDragButton = 0;
}
function MouseDragKeyUp()
{
	if((MouseDragKeyShift && !KeyShiftDown) || (MouseDragKeyCtrl && !KeyCtrlDown))
	{
		MouseHandleDragEnd();
		MouseDragReset();
	}
}
function MouseDrag(Source, Event)
{
	if(Source == MouseDragOff || (MouseDragTarget && MouseDragTarget != Event.target))
	{
		MouseDragReset();
		return;
	}

	var LocalRect = Event.target.getBoundingClientRect();
	MouseDragX = Event.clientX - LocalRect.left;
	MouseDragY = Event.clientY - LocalRect.top;

	function HasSelection() {
		var dx = Math.abs(MouseDragX - MouseDragXStart);
		var dy = Math.abs(MouseDragY - MouseDragYStart);
		return (dx + dy > 1);
	}

	if(Source == MouseDragUp && !HasSelection())
	{
		RangeSelect = RangeInit();
		Invalidate = 0;
	}

	if(MouseDragState == MouseDragMove)
	{
		if((Source == MouseDragUp && MapMouseButton(Event) == MouseDragButton) ||
			(MouseDragKeyCtrl && !KeyCtrlDown) ||
			(MouseDragKeyShift && !KeyShiftDown))
		{
			MouseHandleDragEnd();
			MouseDragReset();
			return;
		}
		else
		{
			MouseHandleDrag();
		}
		g_Loader.hasUserInteracted = true;
	}
	else if(MouseDragState == MouseDragOff)
	{
		if(Source == MouseDragDown || KeyShiftDown || KeyCtrlDown)
		{
			MouseDragTarget = Event.target;
			MouseDragButton = MapMouseButton(Event);
			MouseDragState = MouseDragDown;
			MouseDragXStart = MouseDragX;
			MouseDragYStart = MouseDragY;
			MouseDragKeyCtrl = 0;
			MouseDragKeyShift = 0;

			if(KeyShiftDown || KeyCtrlDown)
			{
				MouseDragKeyShift = KeyShiftDown;
				MouseDragKeyCtrl = KeyCtrlDown;
				MouseDragState = MouseDragMove;
			}
		}
	}
	else if(MouseDragState == MouseDragDown)
	{
		// Hide the Events window when starting to drag the mouse
		ShowEvents(false);

		if(Source == MouseDragUp)
		{
			MouseHandleDragClick();
			MouseDragReset();
		}
		else if(Source == MouseDragMove)
		{
			if(HasSelection())
			{
				MouseDragState = MouseDragMove;
			}
		}
	}
	MouseDragXLast = MouseDragX;
	MouseDragYLast = MouseDragY;
}

function MouseMove(evt)
{
    evt.preventDefault();
    ZoomActive = 0;
    MouseDrag(MouseDragMove, evt);
 	MouseHistory = 0;
	MouseDetailed = 0;
	HistoryViewMouseX = HistoryViewMouseY = -1;
	var rect = evt.target.getBoundingClientRect();
	var x = evt.clientX - rect.left;
	var y = evt.clientY - rect.top;
	if(evt.target == CanvasDetailedView)
	{
		if(!MouseDragSelectRange())
		{
			RangeCpu = RangeInit();
		}
		DetailedViewMouseX = x;
		DetailedViewMouseY = y;
	}
	else if(evt.target == CanvasHistory)
	{
		var Rect = CanvasHistory.getBoundingClientRect();
		HistoryViewMouseX = x;
		HistoryViewMouseY = y;
	}
	Draw(1);
}

function MouseButton(bPressed, evt)
{
    evt.preventDefault();
	MouseDrag(bPressed ? MouseDragDown : MouseDragUp, evt);
	if(!bPressed)
	{
		if(SortColumnMouseOverNext)
		{
			if(SortColumnMouseOverNext == SortColumnMouseOver)
			{
				SortColumnOrderFlip =  1 - SortColumnOrderFlip;
			}
			else
			{
				SortColumnOrderFlip = 0;
			}

			SortColumnMouseOver = SortColumnMouseOverNext;
			SortColumnMouseOverNext = null;
			if(SortColumnMouseOver == StrAverage)
			{
				SortColumn = 1;
			}
			else if(SortColumnMouseOver == StrMax)
			{
				SortColumn = 2;
			}
			else if(SortColumnMouseOver == StrTotal)
			{
				SortColumn = 3;
			}
			else if(SortColumnMouseOver == StrMin)
			{
				SortColumn = 4;
			}
			else if(SortColumnMouseOver == StrCallAverage)
			{
				SortColumn = 5;
			}
			else if(SortColumnMouseOver == StrCount)
			{
				SortColumn = 6;
			}
			else if(SortColumnMouseOver == StrExclAverage)
			{
				SortColumn = 7;
			}
			else if(SortColumnMouseOver == StrExclMax)
			{
				SortColumn = 8;
			}
			else if(SortColumnMouseOver == StrGroup)
			{
				SortColumn = 0;
			}
			RequestRedraw();
		}
	}
}

function MouseOut(evt)
{
	MouseDrag(MouseDragOff, evt);
	KeyCtrlDown = 0;
	KeyShiftDown = 0;
	MouseDragButton = 0;
	nHoverToken = -1;
	RangeCpu = RangeInit();
	
	if(evt.target == CanvasDetailedView) {
		DetailedViewMouseX = -1;
		DetailedViewMouseY = -1;
	} else if(evt.target == CanvasHistory) {
		HistoryViewMouseX = -1;
		HistoryViewMouseY = -1;
	}
	
    Draw(1);
}

function MouseWheel(e)
{
    var e = window.event || e;
    var delta = (e.wheelDelta || e.detail * (-120));
	
	var dir = delta > 0 ? 1 : -1;
	function dirPostfix() {
		return (dir > 0 ? "_dec" : "_inc");
	}
	function clickBtnIdDir(baseBtnId) {
		var btnId = baseBtnId + dirPostfix();
		document.getElementById(btnId).click();
	}
	
	if (e.target == CanvasDetailedView) {
		if (KeyShiftDown == 1 && g_Ext.xray.barEnabled && DetailedViewMouseY <= g_Ext.xray.barYOffset && DetailedViewMouseY > 0) {
			// Select X-Ray threshold for the preview bar
			clickBtnIdDir("xthreshold_bar");
		} else if (KeyShiftDown == 1 && g_Ext.xray.viewEnabled) {
			// Select X-Ray threshold for the main view
			clickBtnIdDir("xthreshold_main");
		} else if (KeyCtrlDown == 0) {
			// Default behaviour = zoom
			ZoomGraph((-4 * delta / 120.0) | 0);
		}
	} else if (e.target = CanvasHistory) {
		if (KeyShiftDown == 1 && (g_Ext.xray.viewEnabled || g_Ext.xray.barEnabled)) {
			// Select X-Ray threshold for frames
			clickBtnIdDir("xthreshold_frames");
		} else if (KeyCtrlDown == 0) {
			// Select reference time for frames
			var selRefId = 0;
			var ReferenceMenu = document.getElementById('ReferenceSubMenu');
			var Links = ReferenceMenu.getElementsByTagName('a');
			for (var i = 0; i < Links.length; ++i) {
				var selected = (Links[i].style['text-decoration'] == 'underline');
				if (selected) {
					selRefId = i;
					break;
				}
			}
			selRefId = clamp(selRefId + (-dir), 0, Links.length - 1);
			Links[selRefId].click();
		}
	}
	
    Draw(1);
}
function ShowFilterInput(bShow)
{
	var el = document.getElementById('filterinput');
	if(bShow == undefined)
		return el.style['display'] == 'block';
	el.style['display'] = bShow ? 'block' : 'none';
	return bShow;
}

function SetFilterInput(group, timer)
{
	FilterInputGroupString = group;
	FilterInputTimerString = timer;
	FilterInputGroup.value = group?group:'';
	FilterInputTimer.value = timer?timer:'';
	FilterUpdate();
	if(group || timer)
	{
		ShowFilterInput(1);
	}
	else
	{
		ShowFilterInput(0);
	}

}

function ToggleFilterInput(escape)
{
	var ActiveElement = -1;
	for(var i = 0; i < FilterInputArray.length; ++i)
	{
		if(FilterInputArray[i] == document.activeElement)
		{
			ActiveElement = i;
		}
	}
	var OldActiveElement = ActiveElement;
	if(ActiveElement >= 0)
	{
		FilterInputArray[ActiveElement].blur();
	}
	ActiveElement++;
	if(!escape)
	{
		if(!ShowFilterInput())
		{
			// First show -> set focus on the last filter input field
			ActiveElement = FilterInputArray.length - 1;
		}
		if(ActiveElement < FilterInputArray.length)
		{
			ShowFilterInput(1);
			FilterInputArray[ActiveElement].focus();
		}
	}
	else
	{
		if(-1 == OldActiveElement)
		{
			SetFilterInput();
		}
	}
}

function GotoWorst(Token)
{
	var start = TimerInfo[Token].worststart;
	var end = TimerInfo[Token].worstend;
	if (end > 0)
	{
		RangeSelect.Begin = start;
		RangeSelect.End = end;
		RangeSelect.Thread = TimerInfo[Token].worstthread;
		RangeSelect.Index = Token;
		ShowFlashMessage('Worst: ' + (end-start).toFixed(2) + 'ms ' + TimerInfo[Token].name, 100);
		MoveTo(RangeSelect.Begin, RangeSelect.End, ThreadY[RangeSelect.Thread] + nOffsetY, ThreadY[RangeSelect.Thread+1] + nOffsetY);
		MouseHandleDragEnd();
	}
}

function KeyUp(evt)
{
	if(evt.keyCode == 39)
	{
		MoveToNext(1);
	}
	if(evt.keyCode == 37)
	{
		MoveToNext(-1);
	}
	if(evt.keyCode == 17)
	{
		KeyCtrlDown = 0;
		MouseDragKeyUp();
	}
	else if(evt.keyCode == 16)
	{
		KeyShiftDown = 0;
		MouseDragKeyUp();
	}
	if(evt.keyCode == 32)
	{
		if(RangeSelect.Begin < RangeSelect.End)
		{
			ZoomTo(RangeSelect.Begin, RangeSelect.End);
			RangeSelect = RangeInit();
			MouseHandleDragEnd();
		}
	}
	if(evt.keyCode == 87)
	{
		evt.preventDefault();
		if(Mode == ModeDetailed)
		{
			var Token = nHoverToken;
			if(Token == -1 && RangeValid(RangeSelect) && RangeSelect.Index >= 0)
			{
				Token = RangeSelect.Index;
			}
			if(Token != -1 && Token < TimerInfo.length)
			{
				GotoWorst(Token)
			}
		}
		else if(Mode == ModeTimers)
		{
			ToggleFilterInput(0);
			evt.preventDefault();
		}

	}
	if (Mode == ModeDetailed)
	{
		if (evt.keyCode == 189)
		{
			ToggleFilterInput(0);
			evt.preventDefault();
		}
		else if (evt.keyCode == 13)
		{
			var tokenCompareString = FilterInputTimerString.toLowerCase();
			var tokenGroupCompareString = FilterInputGroupString.toLowerCase();
			var Token = 0;
			while (Token < TimerInfo.length)
			{
				var groupIndex = TimerInfo[Token].group;
				var tokenGroupString = GroupInfo[groupIndex].name.toLowerCase();
				if (tokenGroupString.startsWith(tokenGroupCompareString))
				{
					var tokenString = TimerInfo[Token].name.toLowerCase();
					if (tokenString.startsWith(tokenCompareString))
					{
					    break;
					}
				}
				++Token;
			}
			if(Token != -1 && Token < TimerInfo.length)
			{
				GotoWorst(Token);
	        }
		}
	}
	if(evt.keyCode == 27)
	{
		RangeSelect = RangeInit();
		SortColumn = 0;
		SortColumnMouseOver = "";
		if((Mode == ModeTimers) || (Mode == ModeDetailed))
		{
			ToggleFilterInput(1);
			evt.preventDefault();
		}
	}

	if(evt.keyCode == 90) // z to toggle tooltip
	{
		ToolTip = (ToolTip+1)%3; //0: off, 1: default, 2: flipped
		var ToolTipStr = 'Off';
		var bShowTimers = Mode == ModeTimers;
		if(ToolTip == 2)
		{
			bShowTimers = !bShowTimers;
		}
		if(ToolTip)
		{
			if(bShowTimers)
				ToolTipStr = "Timers";
			else
				ToolTipStr = "Detailed";
		}
		ShowFlashMessage('ToolTip: ' + ToolTipStr, 100);
	}

	function ClickMenuButton(elId) {
		if (IsPluginsTabVisible()) {
			var XView = document.getElementById(elId);
			var firstA = XView.querySelector('a');
			firstA.click();
		}
	}

	if(evt.keyCode == 88) { // x to toggle XRay view
		ClickMenuButton('xview');
	}
	
	if(evt.keyCode == 67) { // c to toggle XRay count/sum modes
		ClickMenuButton('xmode');
	}

	Invalidate = 0;
}
function CreateFilter(Filter)
{
	if(!Filter || Filter.length == 0)
	{
		return null;
	}
	Filter = Filter.split(' ');
	for(var i = 0; i < Filter.length; ++i)
	{
		Filter[i] = new RegExp(Filter[i], "i");
	}
	return Filter;
}
function FilterKeyUp()
{
	FilterInputTimerString = FilterInputTimer.value;
	FilterInputGroupString = FilterInputGroup.value;
	FilterUpdate();
}

function FilterUpdate()
{
	FilterTimer = CreateFilter(FilterInputTimerString);
	FilterGroup = CreateFilter(FilterInputGroupString);
}

function KeyDown(evt)
{
	if(evt.keyCode == 17)
	{
		KeyCtrlDown = 1;
	}
	else if(evt.keyCode == 16)
	{
		KeyShiftDown = 1;
	}
	else if(evt.keyCode == 9)
	{
		evt.preventDefault();
	}
	else
	{
		var isFindKey = false;
		var isFindNextKey = false;
		if (window.IsMac) {
			isFindKey = evt.metaKey && evt.keyCode === 70;
			isFindNextKey = evt.metaKey && evt.keyCode === 71;
		} else {
			isFindKey = evt.ctrlKey && evt.keyCode === 70;
			isFindNextKey = evt.keyCode === 114;
		}
		
		if (isFindKey)
		{
			evt.preventDefault();
			var hide = ShowFilterInput();
			ToggleFilterInput(hide);
		}

		if (isFindNextKey) {
			evt.preventDefault();
			MoveToNext(1);
		}
	}
	
	Invalidate = 0;
}

function ReadCookie()
{
	var result = document.cookie.match(/fisk=([^;]+)/);
	var NewMode = ModeDetailed;
	var ReferenceTimeString = '33ms';
	if(result && result.length > 0)
	{
		var Obj = JSON.parse(result[1]);
		if(Obj.Mode)
		{
			NewMode = Obj.Mode;
		}
		if(Obj.ReferenceTime)
		{
			ReferenceTimeString = Obj.ReferenceTime;
		}
		if(Obj.ThreadsAllActive || Obj.ThreadsAllActive == 0 || Obj.ThreadsAllActive == false)
		{
			ThreadsAllActive = Obj.ThreadsAllActive;
		}
		else
		{
			ThreadsAllActive = 1;
		}
		if(Obj.ThreadsActive)
		{
			ThreadsActive = Obj.ThreadsActive;
		}
		if(Obj.GroupsAllActive || Obj.GroupsAllActive == 0 || Obj.GroupsAllActive)
		{
			GroupsAllActive = Obj.GroupsAllActive;
		}
		else
		{
			GroupsAllActive = 1;
		}
		if(Obj.GroupsActive)
		{
			GroupsActive = Obj.GroupsActive;
		}
		if(Obj.nContextSwitchEnabled)
		{
			nContextSwitchEnabled = Obj.nContextSwitchEnabled; 
		}
		else
		{
			nContextSwitchEnabled = 1;
		}
		if(Obj.GroupColors)
		{
			GroupColors = Obj.GroupColors;
		}
		else
		{
			GroupColors = 0;
		}
		if(Obj.nHideHelp)
		{
			nHideHelp = 1;
		}
		TimersGroups = Obj.TimersGroups?Obj.TimersGroups:0;
		TimersMeta = Obj.TimersMeta?0:1;
		ZeroBasedBars = Obj.ZeroBasedBars?0:1;
	}
	SetContextSwitch(nContextSwitchEnabled);
	SetMode(NewMode, TimersGroups);
	SetReferenceTime(ReferenceTimeString);
	UpdateOptionsMenu();
	UpdateGroupColors();
}
function WriteCookie()
{
	var Obj = new Object();
	Obj.Mode = Mode;
	Obj.ReferenceTime = ReferenceTime + 'ms';
	Obj.ThreadsActive = ThreadsActive;
	Obj.ThreadsAllActive = ThreadsAllActive;
	Obj.GroupsActive = GroupsActive;
	Obj.GroupsAllActive = GroupsAllActive;
	Obj.nContextSwitchEnabled = nContextSwitchEnabled;
	Obj.TimersGroups = TimersGroups?TimersGroups:0;
	Obj.TimersMeta = TimersMeta?0:1;
	Obj.ZeroBasedBars = ZeroBasedBars?0:1;
	Obj.GroupColors = GroupColors;
	if(nHideHelp)
	{
		Obj.nHideHelp = 1;
	}
	var date = new Date();
	date.setFullYear(2099);
	var cookie = 'fisk=' + JSON.stringify(Obj) + ';expires=' + date;
	document.cookie = cookie;
}
function RegisterInputListeners()
{
	var mousewheelevt = (/Firefox/i.test(navigator.userAgent)) ? "DOMMouseScroll" : "mousewheel" //FF doesn't recognize mousewheel as of FF3.x

	CanvasDetailedView.addEventListener('mousemove', MouseMove, false);
	CanvasDetailedView.addEventListener('mousedown', function(evt) { MouseButton(true, evt); });
	CanvasDetailedView.addEventListener('mouseup', function(evt) { MouseButton(false, evt); } );
	CanvasDetailedView.addEventListener('mouseout', MouseOut);
	CanvasDetailedView.addEventListener("contextmenu", function (e) { e.preventDefault(); }, false);
	CanvasDetailedView.addEventListener(mousewheelevt, MouseWheel, false);
	CanvasHistory.addEventListener('mousemove', MouseMove);
	CanvasHistory.addEventListener('mousedown', function(evt) { MouseButton(true, evt); });
	CanvasHistory.addEventListener('mouseup', function(evt) { MouseButton(false, evt); } );
	CanvasHistory.addEventListener('mouseout', MouseOut);
	CanvasHistory.addEventListener("contextmenu", function (e) { e.preventDefault(); }, false);
	CanvasHistory.addEventListener(mousewheelevt, MouseWheel, false);
	FilterInputTimer.addEventListener('keyup', FilterKeyUp);
	FilterInputGroup.addEventListener('keyup', FilterKeyUp);
	window.addEventListener('keydown', KeyDown);
	window.addEventListener('keyup', KeyUp);
	window.addEventListener('resize', ResizeCanvas, false);
}



function CalcAverage()
{
	var Sum = 0;
	var Count = 0;
	for(nLog = 0; nLog < nNumLogs; nLog++)
	{
		StackPos = 0;
		for(var i = 0; i < Frames.length; i++)
		{
			var Frame_ = Frames[i];			
			var tt = Frame_.tt[nLog];
			var ts = Frame_.ts[nLog];

			var count = tt.length;
			for(var j = 0; j < count; j++)
			{
				var type = tt[j];
				var time = ts[j];
				if(type == 1)
				{
					Stack[StackPos] = time;//store the frame which it comes from
					StackPos++;
				}
				else if(type == 0)
				{
					if(StackPos>0)
					{

						StackPos--;
						var localtime = time - Stack[StackPos];
						Count++;
						Sum += localtime;
					}
				}
			}
		}
	}
	return Sum / Count;

}

function MakeLod(index, MinDelta, GlobalArray, LogStart)
{
	if(LodData[index])
	{
		console.log("error!!");
	}
	var o = new Object();
	o.MinDelta = MinDelta;
	o.GlobalArray = GlobalArray;
	o.LogStart = LogStart;
	LodData[index] = o;
}

function PreprocessBuildSplitArray()
{
	var nNumLogs = Frames[0].ts.length;

	ProfileEnter("PreprocessBuildSplitArray");
	var SplitArrays = new Array(nNumLogs);

	for(nLog = 0; nLog < nNumLogs; nLog++)
	{
		var MaxDepth = 1;
		var StackPos = 0;
		var Stack = Array(20);
		var TypeArray = g_TypeArray[nLog];
		var TimeArray = g_TimeArray[nLog];
		var DeltaTimes = new Array(TypeArray.length);

		for(var j = 0; j < TypeArray.length; ++j)
		{
			var type = TypeArray[j];
			var time = TimeArray[j];
			if(type == 1)
			{
				//push
				Stack[StackPos] = time;
				StackPos++;
			}
			else if(type == 0)
			{
				if(StackPos>0)
				{
					StackPos--;
					DeltaTimes[j] = time - Stack[StackPos];
				}
				else
				{
					DeltaTimes[j] = 0;
				}
			}
		}
		DeltaTimes.sort(function(a,b){return b-a;});
		var SplitArray = Array(NumLodSplits);
		var SplitIndex = DeltaTimes.length;

		var j = 0;
		for(j = 0; j < NumLodSplits; ++j)
		{
			SplitIndex = Math.floor(SplitIndex / 2);
			while(SplitIndex > 0 && !DeltaTimes[SplitIndex])
			{
				SplitIndex--;
			}
			if(SplitIndex < SplitMin)
			{
				break;
			}
			//search.. if 0
			var SplitTime = DeltaTimes[SplitIndex];
			if(SplitTime>=0)
			{
				SplitArray[j] = SplitTime;
			}
			else
			{
				SplitArray[j] = SPLIT_LIMIT;
			}
			if(j>0)
			{
				console.assert(SplitArray[j-1] <= SplitArray[j], "must be less");
			}

		}
		for(; j < NumLodSplits; ++j)
		{
			SplitArray[j] = SPLIT_LIMIT;
		}


		SplitArrays[nLog] = SplitArray;
	}
	ProfileLeave();
	return SplitArrays;
}

function PreprocessBuildDurationArray()
{
	var nNumLogs = Frames[0].ts.length;
	ProfileEnter("PreprocessBuildDurationArray");
	var DurationArrays = new Array(nNumLogs);
	for(nLog = 0; nLog < nNumLogs; ++nLog)
	{
		var MaxDepth = 1;
		var StackPos = 0;
		var Stack = Array(20);
		var StackIndex = Array(20);
		var TypeArray = g_TypeArray[nLog];
		var TimeArray = g_TimeArray[nLog];
		var DurationArray = Array(g_TypeArray[nLog].length);
		for(var j = 0; j < TypeArray.length; ++j)
		{
			var type = TypeArray[j];
			var time = TimeArray[j];
			if(type == 1)
			{
				//push
				Stack[StackPos] = time;
				StackIndex[StackPos] = j;
				StackPos++;
			}
			else if(type == 0)
			{
				if(StackPos>0)
				{
					StackPos--;
					var Duration = time - Stack[StackPos];
					DurationArray[StackIndex[StackPos]] = Duration;
					DurationArray[j] = Duration;
				}
				else
				{
					DurationArray[j] = 0;
				}
			}
		}
		for(var j = 0; j < StackPos; ++j)
		{
			DurationArray[j] = 0;
		}
		DurationArrays[nLog] = DurationArray;
	}
	ProfileLeave();
	return DurationArrays;

}
function PreprocessLods()
{
	ProfileEnter("PreprocessLods");
	var nNumLogs = Frames[0].ts.length;
	var SplitArrays = PreprocessBuildSplitArray();
	var DurationArrays = PreprocessBuildDurationArray();
	var Source = LodData[0];
	var SourceLogStart = Source.LogStart;
	var NumFrames = SourceLogStart.length;

	for(var i = 0; i < NumLodSplits-1; ++i)
	{
		var DestLogStart = Array(SourceLogStart.length);
		for(var j = 0; j < DestLogStart.length; ++j)
		{
			DestLogStart[j] = Array(nNumLogs);
		}
		var MinDelta = Array(nNumLogs);
		var GlobalArray = Array(nNumLogs);

		for(nLog = 0; nLog < nNumLogs; ++nLog)
		{
			var Duration = DurationArrays[nLog];
			var SplitTime = SplitArrays[nLog][i];

			MinDelta[nLog] = SplitTime;
			if(SplitTime < SPLIT_LIMIT)
			{
				var SourceCount = Duration.length;
				var DestGlobalArray = Array();
				var RemapArray = Array(SourceCount);

				for(var j = 0; j < SourceCount; ++j)
				{
					RemapArray[j] = DestGlobalArray.length;
					if(Duration[j] >= SplitTime)
					{
						DestGlobalArray.push(j);
					}
				}
				GlobalArray[nLog] = DestGlobalArray;
				for(var j = 0; j < NumFrames; ++j)
				{
					var OldStart = SourceLogStart[j][nLog];
					var NewStart = RemapArray[OldStart];
					var FrameArray = DestLogStart[j];
					FrameArray[nLog] = NewStart;
				}
			}
			else
			{

				for(var j = 0; j < NumFrames; ++j)
				{
					var FrameArray = DestLogStart[j];
	
					FrameArray[nLog] = 0;
				}

			}

		}
		MakeLod(i+1, MinDelta, GlobalArray, DestLogStart);
	}
	ProfileLeave();
}
function PreprocessGlobalArray()
{
	ProfileEnter("PreprocessGlobalArray");
	var nNumLogs = Frames[0].ts.length;
	var CaptureStart = Frames[0].framestart;
	var CaptureEnd = Frames[Frames.length-1].frameend;
	g_GlobalArray = new Array(nNumLogs);
	g_TypeArray = new Array(nNumLogs);
	g_TimeArray = new Array(nNumLogs);
	g_IndexArray = new Array(nNumLogs);
	g_LabelArray = new Array(nNumLogs);
	g_XtraArray = new Array(nNumLogs); // Events

	var StackPos = 0;
	var Stack = Array(20);
	var LogStartArray = new Array(Frames.length);
	for(var i = 0; i < Frames.length; i++)
	{
		Frames[i].LogStart = new Array(nNumLogs);	
		LogStartArray[i] = Frames[i].LogStart;

		Frames[i].LogEnd = new Array(nNumLogs);
	}
	var MinDelta = Array(nNumLogs);
	for(nLog = 0; nLog < nNumLogs; nLog++)
	{
		MinDelta[nLog] = 0;
		var Discard = 0;
		var GlobalArray = new Array();
		var TypeArray = new Array();
		var TimeArray = new Array();
		var IndexArray = new Array();
		var LabelArray = new Array();
		var XtraArray = new Array();

		for(var i = 0; i < Frames.length; i++)
		{
			var Frame_ = Frames[i];	
			Frame_.LogStart[nLog] = TimeArray.length;
			var FrameDiscard = OverflowAllowance(nLog, Frame_);
			var tt = Frame_.tt[nLog];
			var ts = Frame_.ts[nLog];
			var ti = Frame_.ti[nLog];
			var tx = Frame_.tx[nLog];
			var tl = Frame_.tl[nLog];
			var len = tt.length;
			var DiscardLast = 0;
			for(var xx = 0; xx < len; ++xx)
			{
				var Skip = (tt[xx] == 4) ? DiscardLast : (tt[xx] < EventBaseId && ts[xx] > FrameDiscard);
				if(Skip)
				{
					Discard++;
					DiscardLast = 1;
				}
				else
				{
					DiscardLast = 0;
					GlobalArray.push(TypeArray.length);
					TypeArray.push(tt[xx]);
					TimeArray.push(ts[xx]);
					IndexArray.push(ti[xx]);
					if (tx[xx] != undefined)
						XtraArray[TypeArray.length - 1] = tx[xx];

					// Use label after the region instead of the region name for some regions
					var Label = null;
					if(xx + 1 < len && tt[xx] == 1 && tt[xx+1] == 3 && TimerInfo[ti[xx]].namelabel)
					{
						Label = tl[ti[xx+1]];
					}

					LabelArray.push(Label);
				}
			}
			Frame_.LogEnd[nLog] = TimeArray.length;
		}
		g_GlobalArray[nLog] = GlobalArray;
		g_TypeArray[nLog] = TypeArray;
		g_TimeArray[nLog] = TimeArray;
		g_IndexArray[nLog] = IndexArray;
		g_LabelArray[nLog] = LabelArray;
		g_XtraArray[nLog] = XtraArray;

		if(Discard)
		{
			console.log('discarded ' + Discard + ' markers from ' + ThreadNames[nLog]);
		}
	}
	MakeLod(0, MinDelta, g_GlobalArray, LogStartArray);
	ProfileLeave();
}

function PreprocessFindFirstFrames()
{
	ProfileEnter("PreprocesFindFirstFrames");
	//create arrays that show how far back we need to start search in order to get all markers.
	var nNumLogs = Frames[0].ts.length;
	for(var i = 0; i < Frames.length; i++)
	{
		Frames[i].FirstFrameIndex = new Array(nNumLogs);
	}

	var StackPos = 0;
	var Stack = Array(20);
	g_MaxStack = Array(nNumLogs);
	
	for(nLog = 0; nLog < nNumLogs; nLog++)
	{
		var MaxStack = 0;
		StackPos = 0;
		for(var i = 0; i < Frames.length; i++)
		{
			var Frame_ = Frames[i];			
			var tt = Frame_.tt[nLog];
			var count = tt.length;

			var FirstFrame = i;
			if(StackPos>0)
			{
				FirstFrame = Stack[0];
			}
			Frames[i].FirstFrameIndex[nLog] = FirstFrame;

			for(var j = 0; j < count; j++)
			{
				var type = tt[j];
				if(type == 1)
				{
					Stack[StackPos] = i;//store the frame which it comes from
					StackPos++;
					if(StackPos > MaxStack)
					{
						MaxStack = StackPos;
					}
				}
				else if(type == 0)
				{
					if(StackPos>0)
					{
						StackPos--;
					}
				}
			}
		}
		g_MaxStack[nLog] = MaxStack;
	}
	ProfileLeave();
}
function PreprocessMeta()
{
	MetaLengths = Array(MetaNames.length);
	MetaLengthsAvg = Array(MetaNames.length);
	MetaLengthsMax = Array(MetaNames.length);
	for(var i = 0; i < MetaNames.length; ++i)
	{
		MetaLengths[i] = MetaNames[i].length+1;
		MetaLengthsAvg[i] = MetaNames[i].length+5;
		MetaLengthsMax[i] = MetaNames[i].length+5;
		if(MetaLengths[i]<12)
			MetaLengths[i] = 12;
		if(MetaLengthsAvg[i]<12)
			MetaLengthsAvg[i] = 12;
		if(MetaLengthsMax[i]<12)
			MetaLengthsMax[i] = 12;
	}
	for(var i = 0; i < TimerInfo.length; ++i)
	{
		var Timer = TimerInfo[i];
		for(var j = 0; j < MetaNames.length; ++j)
		{
			var Len = FormatMeta(Timer.meta[j],0).length + 2;
			var LenAvg = FormatMeta(Timer.meta[j],2).length + 2;
			var LenMax = FormatMeta(Timer.meta[j],0).length + 2;
			if(Len > MetaLengths[j])
			{
				MetaLengths[j] = Len;
			}
			if(LenAvg > MetaLengthsAvg[j])
			{
				MetaLengthsAvg[j] = LenAvg;
			}
			if(LenMax > MetaLengthsMax[j])
			{
				MetaLengthsMax[j] = LenMax;
			}
		}
	}
}

function Preprocess()
{
	var ProfileModeOld = ProfileMode;
	ProfileMode = 1;
	ProfileModeClear();
	ProfileEnter("Preprocess");
	PreprocessTimerSubstitions('Lua', '$Script');
	PreprocessTimerSubstitions('LuaBridge', '$namecall');
	PreprocessTimerSubstitions('LuaBridge', '$index');
	PreprocessTimerSubstitions('LuaBridge', '$newindex');
	PreprocessCalculateAllTimers();
	PreprocessFindFirstFrames();
	PreprocessGlobalArray();
	PreprocessLods();
	PreprocessMeta();
	PreprocessContextSwitchCache();
	ProfileLeave();
	ProfileModeDump();
	ProfileMode = ProfileModeOld;
	Initialized = 1;
}

function ShowHelp(Show, Forever)
{
	var HelpWindow = document.getElementById('helpwindow');
	if(Show)
	{
		HelpWindow.style['display'] = 'block';
	}
	else
	{
		HelpWindow.style['display'] = 'none';
	}
	if(Forever)
	{
		nHideHelp = Show ? 0 : 1;
		WriteCookie();
	}
}

//////////////////////////////////////////////////////////////////////////////////////////
// Data loader

function SaveExportResult(str) {
	g_Loader.toolsData.exportResult = str;
}

function ExecStatement(js) {
    eval(js);
}

async function UnzipData(compressedData, prefix, postfix, hasSize, method) {
	var compressedDataNoHeader = hasSize ? compressedData.slice(2 * 4) : compressedData;
	const compressedStream = new ReadableStream({
		start(controller) {
			controller.enqueue(compressedDataNoHeader);
			controller.close();
		}
	});

	const decompressionStream = new DecompressionStream(method);
	const readableStream = compressedStream.pipeThrough(decompressionStream);

	let encoder = new TextEncoder();
	var prefixData = (prefix.length > 0) ? encoder.encode(prefix) : new Uint8Array;
	var postfixData = (postfix.length > 0) ? encoder.encode(postfix) : new Uint8Array;

	const reader = readableStream.getReader();
	var chunks = [];
	var resData = null;
	var resPos = 0;

	if (hasSize) {
		const view = new DataView(compressedData.buffer);
		var uncompressedSize = view.getUint32(0, true);
		resData = new Uint8Array(prefixData.length + uncompressedSize + postfixData.length);
	}
	
	if (prefixData.length > 0) {
		if (hasSize) {
			resData.set(prefixData, resPos);
		} else {
			chunks.push(prefixData);
		}
		resPos += prefixData.length;
	}	
	
	while (true) {
		const { done, value } = await reader.read();
		if (done)
			break;

		if (hasSize) {
			resData.set(value, resPos);
		} else {
			chunks.push(value);
		}
		resPos += value.length;
	}

	if (postfixData.length > 0) {
		if (hasSize) {
			resData.set(postfixData, resPos);
		} else {
			chunks.push(postfixData);
		}
		resPos += postfixData.length;
	}

	if (!hasSize) {
		var resData = new Uint8Array(resPos);
		resPos = 0;
		chunks.forEach(chunk => {
			resData.set(chunk, resPos);
			resPos += chunk.length;
		});
	}
	return resData;
}

async function ExtractDataFromComment(nodeId, magic, prefix, postfix, hasSize, method, callback) {
	var orig = null;
	if (nodeId < document.childNodes.length) {
		var node = document.childNodes[nodeId];
		if (node.nodeType === Node.COMMENT_NODE && node.data.startsWith(magic)) {
			orig = node.data.substring(magic.length);
		}
	}
	if (orig === null) {
		console.error("Error extracting data from node");
		callback(new Uint8Array);
		return;
	}
	
	const base64Data = orig;
	const compressedData = Uint8Array.from(atob(base64Data), c => c.charCodeAt(0));

	return UnzipData(compressedData, prefix, postfix, hasSize, method)
		.then(data => {
			callback(data);
		})
		.catch(error => {
			console.error("Error unzipping data: ", error);
			callback(new Uint8Array);
		});
}

function UpdateLoadingProgress() {
	if (!g_Loader.progress) {
		g_Loader.progress = {};
		var dotSpanElement = document.getElementById("progressDotSample");
		var dotWidth = dotSpanElement.offsetWidth;
		var windowWidth = window.innerWidth;
		g_Loader.progress.dotsNum = Math.floor(windowWidth / dotWidth);
		g_Loader.progress.dotsText = Array(g_Loader.progress.dotsNum).fill(".").join("");
		g_Loader.progress.dotsDiv = document.getElementById("progressDots");
		g_Loader.progress.nextFrameId = 0;
	}
	
	if (window.Frames != undefined && Frames[g_Loader.progress.nextFrameId] != undefined) {
		var progressDots = Math.floor(g_Loader.progress.dotsNum * g_Loader.progress.nextFrameId / Frames.length);
		g_Loader.progress.dotsDiv.textContent = g_Loader.progress.dotsText.substring(0, progressDots);
		g_Loader.progress.nextFrameId++;
	}
}

async function ExtractToolsJs() {
	await ExtractDataFromComment(1, "", "",
		"ToolsModule().then(Module => { self.Tools = Module; Tools.ccall('Init', 'number', []); });", true, "deflate",
		function(dataArr){
			g_Loader.worker = {};
			g_Loader.worker.jsDataArr = dataArr;
			g_Loader.worker.blob = new Blob(
				[ g_Loader.worker.jsDataArr ],
				{ type: 'text/javascript' }
			);
			g_Loader.worker.urlObj = URL.createObjectURL(g_Loader.worker.blob);
		}
	);
}

async function ExtractRawData() {
	await ExtractDataFromComment(0, "R0FL", "    R0FL", "", true, "deflate",
		function(dataArr){
			g_Loader.rawDataArr = dataArr;
		}
	);
}

function ComposeOrigDatetime(forTitle) {
	function ZeroPad(number) {
		return ('0' + number).slice(-2);
	}
	var utc = DumpUtcCaptureTime * 1000;
	var date = new Date(utc);
	var year = date.getUTCFullYear();
	var month = ZeroPad(date.getUTCMonth() + 1); // Months are zero-indexed
	var day = ZeroPad(date.getUTCDate());
	var hours = ZeroPad(date.getUTCHours());
	var minutes = ZeroPad(date.getUTCMinutes());
	var seconds = ZeroPad(date.getUTCSeconds());
	var res = forTitle ?
		(year + "" + month + "" + day + " " + hours + "" +  minutes + "" + seconds) :
		(year + month + day + "-" + hours + minutes + seconds);
	return res;
}

function OpenNewExportTab(shortName, fullName, forceDownload) {
	var tabOpened = false;

	function ComposeOrigFilename() {
		var res = "microprofile-" + ComposeOrigDatetime() + ".html";
		return res;
	}

	function GetExportFilename(shortName) {
		var filename = "";
		var pathname = window.location.pathname;
		if (pathname.endsWith('.htm') || pathname.endsWith('.html')) {
			var parts = pathname.split('/');
			filename = parts.pop();
		} else {
			filename = ComposeOrigFilename();
		}
		if (shortName != "") {
			var dotIndex = filename.lastIndexOf('.');
			var baseName = filename.substring(0, dotIndex);
			var extension = filename.substring(dotIndex);
			filename = baseName + '_' + shortName + extension;
		}
		return filename;
	}

	var pageBlob = new Blob(
		[ g_Loader.toolsData.exportResult ],
		{ type: 'text/html' }
	);
	var pageObj = URL.createObjectURL(pageBlob);

	if (!forceDownload) {
		if (window.open(pageObj)) {
			tabOpened = true;
		}
	}
	
	if (!tabOpened) {
		var filename = fullName ? fullName : GetExportFilename(shortName);
		var link = document.createElement('a');
		link.setAttribute('download', filename);
		link.href = pageObj;
		link.click();
		URL.revokeObjectURL(pageObj);
		ShowFlashMessage("Saving started\n" + "Please allow file download if prompted", 150, "#ffcc77");
	}
	
	g_Loader.toolsData.exportResult = null;
}

function InitToolsExportMenu() {
	if (g_Loader.toolsData.isExportMenuInitialized)
		return;
	
	g_Loader.toolsData.isExportMenuInitialized = true;
	var ExportMenu = document.getElementById('ExportSubMenu');
	
	if (g_Loader.toolsData.exportOptions && g_Loader.toolsData.exportOptions.length > 0) {
		MenuAddEntry(ExportMenu, '', 'Extra tools', null, true);
		g_Loader.toolsData.exportOptions.forEach(entry => {
			if (entry.eventIdsNeeded != undefined) {
				var hasNeededEvents = false;
				for (const eventId of entry.eventIdsNeeded) {
					if (g_Ext.typeLookup[EventBaseId + eventId].isPresented) {
						hasNeededEvents = true;
						break;
					}
				}
				if (!hasNeededEvents)
					return;
			}
			if (entry.rawExtensionsNeeded != undefined) {
				var hasNeededFeatures = false;
				var extensionList = (window.ExtensionList == undefined) ? [] : window.ExtensionList;
				for (const extensionName of entry.rawExtensionsNeeded) {
					if (extensionList.includes(extensionName)) {
						hasNeededFeatures = true;
						break;
					}
				}
				if (!hasNeededFeatures)
					return;
			}

			MenuAddEntry(ExportMenu, '', entry.displayName, async function() {
				if (window.InitDataImpl != undefined || g_Loader.isExportInProgress || !g_Loader.isViewerInitialized)
					return;
				
				ShowSpinner(true);
				await ExtractAndExportRaw(entry.funcName);
				OpenNewExportTab(entry.shortName);
				ShowSpinner(false);
			});
		});
	}
	
	AdjustMenuItemsWidth(ExportMenu);
}

function GetHtmlSource(checkOnly, rawDataZipB64) {
	var doc = "";
	var startNodeIndex = 0;
	if (rawDataZipB64) {
		doc += "<!--R0FL" + rawDataZipB64 + "-->\n";
		startNodeIndex++;
	}
	var commentsCount = startNodeIndex;
	var nodes = document.childNodes;
	for (var i = startNodeIndex; i < 2 && i < nodes.length; i++) {
		var node = nodes[i];
		if (node.nodeType == Node.COMMENT_NODE) {
			commentsCount++;
			if (!checkOnly) {
				doc += "<!--" + node.data + "-->\n";
			}
		}
	}
	if (checkOnly && commentsCount < 2)
		return null;
	
	if (!checkOnly) {
		doc += "<!DOCTYPE html>\n";
		doc += "<html>";
	}
	
	var embeddedScriptsCount = 0;
	var scripts = document.getElementsByTagName('script');
	for (var i = 0; i < scripts.length; i++) {
		var script = scripts[i];
		var js = script.textContent;
		var src = script.getAttribute('src');
		if (src == null && js != "") {
			embeddedScriptsCount++;
		}
		if (!checkOnly) {
			doc += "<script";
			doc += (src == null) ? ('>\n' + js) : (' src="' + src + '">');
			doc += "</" + "script>"; // Breaking up the tag to ensure that it is not interpreted as the end of the script
		}
	}
	if (checkOnly && embeddedScriptsCount < 1)
		return null;

	if (!checkOnly) {
		doc += "</html>\n";
	}
	
	return doc;
}

function InitAuxMenus() {
	var OptionsMenu = document.getElementById('OptionsMenu');
	AdjustMenuItemsWidth(OptionsMenu);
	
	var isHttpProtocol = window.location.protocol.startsWith("http");
	var reloadAllowed = isHttpProtocol;
	if (reloadAllowed) {
		var ReloadMenu = document.getElementById('ilReload');
		ReloadMenu.style.display = "";
		ReloadMenu.onclick = function() {
			if (!g_Loader.isExportInProgress) {
				ShowSpinner(true);
				window.location.reload(true);
			}
		}
	}
	
	var savingAllowed = isHttpProtocol && window.IsHtmlSavable;
	if (savingAllowed) {
		var SaveMenu = document.getElementById('ilSave');
		SaveMenu.style.display = "";
		SaveMenu.onclick = function() {
			if (!g_Loader.isExportInProgress) {
				var doc = GetHtmlSource();
				SaveExportResult(doc);
				OpenNewExportTab("", "", true);
			}
		};
	}
}

async function ExtractAndExportRaw(funcName) {
	await ExtractRawData();
	if (!funcName && (!g_Loader.rawDataArr || g_Loader.rawDataArr.length == 0)) {
		return Promise.reject("No data");
	}
	if (window.ToolsModule != undefined) {
		await ParseRawModule(funcName);
	} else {
		await ExtractToolsJs();
		await ParseRawWorker(funcName);
	}
}

function ParseRawModule(exporterFuncName) {
	var funcName = exporterFuncName ? exporterFuncName : "ParseRaw";
	return ToolsModule().then(Module => {
		window.Tools = Module;
		Tools.ccall('Init', 'number', []);
		g_Loader.toolsData.exportOptions = JSON.parse(g_Loader.toolsData.exportResult);
		g_Loader.toolsData.exportResult = null;
		
		var dataPtr = Tools._malloc(g_Loader.rawDataArr.length);
		Tools.HEAPU8.set(g_Loader.rawDataArr, dataPtr);
		var func = Tools.cwrap(funcName, 'number', ['number', 'number']);
		func(dataPtr, g_Loader.rawDataArr.length);
		g_Loader.isDataInitialized = true;
		g_Loader.rawDataArr = null;
		window.Tools = null;
	});
}

function ParseRawWorker(exporterFuncName) {
	var funcName = exporterFuncName ? exporterFuncName : "";
	return new Promise((resolve, reject) => {
		g_Loader.worker.isReady = false;
		g_Loader.worker.instance = new Worker(g_Loader.worker.urlObj);
		g_Loader.worker.instance.onmessage = function(event){
			if (event.data == "") {
				if (g_Loader.worker.isReady) {
					g_Loader.isDataInitialized = true;
					g_Loader.worker.instance.terminate();
					URL.revokeObjectURL(g_Loader.worker.urlObj);
					g_Loader.worker = {};
					resolve();
				} else {
					g_Loader.worker.isReady = true;
					g_Loader.worker.instance.postMessage(funcName);
					g_Loader.worker.instance.postMessage(g_Loader.rawDataArr.buffer, [g_Loader.rawDataArr.buffer]);
					g_Loader.rawDataArr = null;
				}
			} else {
				if (g_Loader.worker.isReady) {
					if (funcName == "") {
						ExecStatement(event.data);
						UpdateLoadingProgress();
					} else {
						SaveExportResult(event.data);
					}
				} else {
					g_Loader.toolsData.exportOptions = JSON.parse(event.data);
				}
			}
		};
	});
}

function ShowSpinner(vis) {
	var divElement = document.getElementById("progressSpinner");
	divElement.style.display = vis ? "" : "none";
	g_Loader.isExportInProgress = vis;
}

function ShowUiRoot() {
	g_Loader.progress = {};
	var divElement = document.getElementById("progressDots");
	divElement.textContent = "";
	divElement.display = "none";

	divElement = document.getElementById("root");
	divElement.style.display = "";
	
	var dt = ComposeOrigDatetime(true);
	document.title += " " + dt;
}

function HaltPage() {
	var dotsDiv = document.getElementById("progressDots");
	dotsDiv.style.textAlign = "center";
	if (g_Loader.isDataInitialized) {
		dotsDiv.innerHTML = "<span style='font-size: 1.2rem;'>Error loading viewer.</span><br>" +
			"See browser's developer console for details.";
	} else {
		dotsDiv.innerHTML = "<span style='font-size: 1.2rem;'>No profiling data found.</span><br>" +
			"If this page was saved using a web browser, please retry saving it by clicking the " +
			"top menu button \u21e9 (Save to file) in the Microprofiler's web UI.<br>" +
			"This option ensures the original file name and internal data remain intact.<br>" +
			"Alternatively, you can try 'Webpage, HTML Only' mode when saving.";
	}
}

function ParseUrlArgs() {
	const argsStr = g_Loader.urlAnchor.slice(1);
	const pairs = argsStr.split('&');
	const argsMap = new Map();
	pairs.forEach(pair => {
		const [key, value] = pair.split('=');
		argsMap.set(key, value);
	});
	return argsMap;
}

function ProcessUrlArgs() {
	var argsMap = ParseUrlArgs();
	if (argsMap.has("ExportMarkersCSV")) {
		ExportMarkersCSV();
	}
}

async function InitData() {
	g_Loader.toolsData = {};
	if (window.InitDataImpl != undefined) {
		InitDataImpl();
		g_Loader.isDataInitialized = true;
		return;
	}
	await ExtractAndExportRaw();
}

//////////////////////////////////////////////////////////////////////////////////////////
// Drag and drop

async function ZipData(inputData, skipFirstBytes, addPrefix) {
	const zipPrefixSize = 2 * 4;
	var binaryArray = skipFirstBytes ? inputData.slice(skipFirstBytes) : inputData;
	
	const inputStream = new ReadableStream({
		start(controller) {
			controller.enqueue(binaryArray);
			controller.close();
		}
	});

	const compressionStream = new CompressionStream("deflate");
	const readableStream = inputStream.pipeThrough(compressionStream);

	const reader = readableStream.getReader();
	var chunks = [];
	var resPos = 0;

	if (addPrefix) {
		var prefixArray = new Uint8Array(zipPrefixSize);
		const view = new DataView(prefixArray.buffer);
		view.setUint32(0, binaryArray.length, true);
		chunks.push(prefixArray);
		resPos += prefixArray.length;
	}
	
	while (true) {
		const { done, value } = await reader.read();
		if (done)
			break;
		chunks.push(value);
		resPos += value.length;
	}

	var resData = new Uint8Array(resPos);
	resPos = 0;
	
	chunks.forEach(chunk => {
		resData.set(chunk, resPos);
		resPos += chunk.length;
	});

	return resData;
}

function ReadFileToUint8Array(file) {
	return new Promise((resolve, reject) => {
		const reader = new FileReader();
		reader.onload = () => {
			const arrayBuffer = reader.result;
			const binaryArray = new Uint8Array(arrayBuffer);
			resolve(binaryArray);
		};
		reader.onerror = reject;
		reader.readAsArrayBuffer(file);
	});
}

function Uint8ArrayToBase64(uint8Array) {
	let binaryString = "";
	for (let i = 0; i < uint8Array.byteLength; i++) {
		binaryString += String.fromCharCode(uint8Array[i]);
	}
	return btoa(binaryString);
}

function CompareUint8ArrayWithStringBytes(uint8Array, str) {
	if (uint8Array.length !== str.length) {
		return false;
	}
	for (let i = 0; i < uint8Array.length; i++) {
		if (uint8Array[i] !== str.charCodeAt(i)) {
			return false;
		}
	}
	return true;
}

function CheckFileMagic(dataArray, magicStr) {
	if (dataArray.length <= magicStr.length)
		return false;
	const firstBytes = dataArray.slice(0, magicStr.length);
	const res = CompareUint8ArrayWithStringBytes(firstBytes, magicStr);
	return res;
}

async function RawToHtml(file) {
	try {
		const rawMagic = "\0\0\0\0R0FL";
		const rawArray = await ReadFileToUint8Array(file);
		if (!CheckFileMagic(rawArray, rawMagic))
			throw new Error("Incorrect input file format");
		
		var zipArray = await ZipData(rawArray, rawMagic.length, true);
		const zipBase64 = Uint8ArrayToBase64(zipArray);
		var doc = GetHtmlSource(false, zipBase64);

		var dotIndex = file.name.lastIndexOf('.');
		var baseName = file.name.substring(0, dotIndex);
		var resName = baseName + '.html';

		SaveExportResult(doc);
		OpenNewExportTab("", resName, true);
	} catch (error) {
		console.error("Error converting raw to html:", error);
	}
}

function DragOverHandler(evt) {
	evt.preventDefault();
}

async function DropHandler(evt) {
	evt.preventDefault();
	var files = evt.dataTransfer.files;
	if (!files)
		return;
	const file = files[0];
	if (window.IsHtmlSavable && file.name.endsWith(".raw")) {
		return RawToHtml(file);
	}
}

//////////////////////////////////////////////////////////////////////////////////////////
// Extension code for events support and XRay mode

var EventBaseId = 128;

var XRayModes = {
	Count: 0,
	Sum: 1,
};

// Accumulator type for counting events and their values
var TxType = {
	count: 0,
	sum: 0,
	add: function(v, c) {
		c = (c == undefined) ? 1 : c;
		this.count += c;
		this.sum += v;
	},
	getField: function(mode) {
		if (mode == XRayModes.Count) {
			return this.count;
		}
		return this.sum;
	},
};

var SpanType = {
	name: "",
	tsBegin: 0,
	tsEnd: 0,
	colorBg: "",
	colorLine: "",
};

function DecimalToHex(d, padding) {
	var hex = Number(Math.floor(d)).toString(16);
	padding = typeof (padding) === "undefined" || padding === null ? padding = 2 : padding;
	while (hex.length < padding) {
		hex = "0" + hex;
	}
	return hex;
}

function IsString(s) {
	return (typeof s === 'string' || s instanceof String);
}

function IsObject(v) {
    return (typeof v === 'object' && v !== null);
}

function IsSimpleType(v) {
    return (typeof v !== 'object' || v === null);
}

function DeepCopy(obj) {
	return Object.create(obj);
}

function Grad255ToColor(grad255) {
	var grad = DecimalToHex(grad255);
	var color = "#" + grad + grad + grad;
	return color;
}

function GradToColor(grad) {
	return Grad255ToColor(grad * 255);
}

function GetNormalizedFromTx(txEntry, isFrameLimits) {
	var limits = isFrameLimits ? g_Ext.xray.selectedLimits.frame : g_Ext.xray.selectedLimits.scope;
	var maxValue = limits.getField(g_Ext.xray.mode);
	var value = txEntry.getField(g_Ext.xray.mode);
	var grad01 = (maxValue > 0) ? Math.min(value / maxValue, 1) : 0;
	if (grad01 > 0) {
		grad01 = Math.max(grad01, 0.02);
	}
	var grad255 = Math.floor(Math.pow(grad01, g_Ext.xray.intensityPower) * 255);
	var color = Grad255ToColor(grad255);
	return {
		value: value,
		grad01: grad01,
		grad255: grad255,
		color: color,
		isDark: grad255 < 170,
	};
}

function StrHtmlEscape(s) {
	return s.replaceAll('<', '&lt;').replaceAll('>', '&gt;');
}

function ValueToCount(v) {
	return v;
}

function ValueToBytes(v) {
	if (g_Ext.xray.mode == XRayModes.Count)
		return v;
	var res;
	if (v > 1000000)
		res = Math.floor(v / 100000) / 10 + "MB";
	else if (v > 10000)
		res = Math.floor(v / 1000) + "KB";
	else if (v > 1000)
		res = Math.floor(v / 100) / 10 + "KB";
	else
		res = v + "B";
	return res;
}

function ColorUint32Multiply(color, k) {
	var res = 0;
	var r = ((color >> 16) & 0xff);
	var g = ((color >>  8) & 0xff);
	var b = ((color >>  0) & 0xff);
	r = clamp(Math.floor(r * k), 0, 255);
	g = clamp(Math.floor(g * k), 0, 255);
	b = clamp(Math.floor(b * k), 0, 255);
	res |= (r << 16);
	res |= (g <<  8);
	res |= (b <<  0);
	return res;
}

// Calculate threshold values for all sensitivity levels from 0 to 100.
// The concept is similar to percentiles.
function CalcPercentiles(txEntries, mode) {
	var values = [];
	txEntries.forEach(function(entry) {
		values.push(entry.getField(mode));
	});

	values.sort(function(a, b) {
		return a - b;
	});
	// Filter out duplicates
	var uniqueSorted = values.filter(function(value, index, self) {
		return self.indexOf(value) === index;
	});

	var res = Array(100 + 1);
	for (var i = 0; i <= 100; i++) {
		var val = 1;
		if (uniqueSorted.length > 0) {
			const pos = Math.floor((uniqueSorted.length - 1) * (i / 100));
			val = uniqueSorted[pos];
		}
		res[i] = val;
	}
	return res;
}

function GatherHoverEvents(TimerIndex, StartIndex, nLog, nFrameLast)
{
	var HoverInfo = [];
	var StackPos = 1;
	//search backwards, aggregate events
	for(var i = nFrameLast; i >= 0; i--)
	{
		var fr = Frames[i];
		var ts = fr.ts[nLog];
		var ti = fr.ti[nLog];
		var tt = fr.tt[nLog];
		var tl = fr.tl[nLog];
		var start = i == nFrameLast ? StartIndex-1 : ts.length-1;

		for(var j = start; j >= 0; j--)
		{
			var type = tt[j];
			var index = ti[j];
			if (type == 1) // enter
			{
				StackPos--;
				if(StackPos == 0 && index == TimerIndex)
				{
					return HoverInfo.reverse();
				}
			}
			else if (type == 0) // exit
			{
				StackPos++;
			}
			else if (type > EventBaseId && StackPos == 1) // event
			{
				var typeLookup = g_Ext.typeLookup[type];
				if (typeLookup.IsActive() && !typeLookup.isBackground) {
					var evt = RawToEvent(ts, ti, tt, tl, j);
					var ctx = typeLookup.plugin.decode(evt, true);
					HoverInfo.push(ctx);
				}
			}
		}
	}
}

function UpdateThresholds() {
	if (g_Ext.xray.autoLimits) {
		var frameVariants = g_Ext.xray.calculatedLimits.frameVariants;
		var frameThresholds = g_Ext.xray.calculatedLimits.frameThresholds;
		g_Ext.xray.selectedLimits.frame.count = frameVariants.count[frameThresholds.count];
		g_Ext.xray.selectedLimits.frame.sum = frameVariants.sum[frameThresholds.sum];

		var scopeVariants = g_Ext.xray.calculatedLimits.scopeVariants;
		var scopeThresholds = g_Ext.xray.calculatedLimits.scopeThresholds;
		g_Ext.xray.selectedLimits.scope.count = scopeVariants.count[scopeThresholds.count];
		g_Ext.xray.selectedLimits.scope.sum = scopeVariants.sum[scopeThresholds.sum];
	} else {
		g_Ext.xray.selectedLimits.frame.count = 5000;
		g_Ext.xray.selectedLimits.frame.sum = 10000000;
		g_Ext.xray.selectedLimits.scope.count = 200;
		g_Ext.xray.selectedLimits.scope.sum = 200000;
	}
}

function ScanEvents() {
	for (var i = 0; i < Frames.length; ++i) {
		var fr = Frames[i];
		var nNumLogs = Frames[0].ts.length;
		for (var nLog = 0; nLog < nNumLogs; ++nLog) {
			var tt = fr.tt[nLog]; // timer type
			var numEntries = tt.length;
			for (var j = 0; j < numEntries; ++j) {
				var logType = tt[j];
				if (logType > EventBaseId) {
					// Event
					g_Ext.eventsPresented = true;
					var typeLookup = g_Ext.typeLookup[logType];
					if (typeLookup != undefined) {
						typeLookup.isPresented = true;
						typeLookup.plugin.isPresented = true;
						g_Ext.knownEventsPresented = true;
					}
				} // logType
			} // entries
		} // threads
	} // frames
}

function PrepareEvents() {
	g_Ext.reset();
	var frameEntries = [];
	var scopeEntries = [];
	for (var i = 0; i < Frames.length; ++i) {
		var fr = Frames[i];
		fr.txAcc = DeepCopy(TxType);
		if (fr.tx == undefined) {
			fr.tx = [];
		}
		var nNumLogs = Frames[0].ts.length;
		for (var nLog = 0; nLog < nNumLogs; ++nLog) {
			var ts = fr.ts[nLog]; // timestamp (ms)
			var ti = fr.ti[nLog]; // timer index
			var tt = fr.tt[nLog]; // timer type
			var tl = fr.tl[nLog]; // timer label
			if (fr.tx[nLog] == undefined) {
				fr.tx[nLog] = [];
			}
			var tx = fr.tx[nLog]; // custom events
			var txStack = Array();
			var numEntries = tt.length;
			for (var j = 0; j < numEntries; ++j) {
				var logType = tt[j];
				if (logType == 1) {
					// ENTER
					if (tx[j] == undefined) {
						tx[j] = DeepCopy(TxType);
					} else {
						tx[j].count = 0;
						tx[j].sum = 0;
					}
					txStack.push(j);
				} else if (logType == 0) {
					// EXIT
					if (txStack.length > 0) {
						const topId = txStack[txStack.length - 1];
						if (tx[topId].count > 0) { // Collect scopes
							scopeEntries.push(tx[topId]);
						}
					}
					txStack.pop();
				}
				else if (logType > EventBaseId) {
					// Event
					var typeLookup = g_Ext.typeLookup[logType];
					if (typeLookup && typeLookup.IsActive()) {
						var plugin = typeLookup.plugin;
						var evt = RawToEvent(ts, ti, tt, tl, j);
						var ctx = plugin.decode(evt);
						if (typeLookup.isBackground) {
							plugin.prepare(ctx);
						} else if (txStack.length > 0) {
							const topId = txStack[txStack.length - 1];
							tx[topId].add(ctx.value, ctx.count);
							fr.txAcc.add(ctx.value, ctx.count);
						}
					} // plugin
				} // logType
			} // entries
		} // threads
		if (fr.txAcc.count > 0) { // Collect frames
			frameEntries.push(fr.txAcc);
		}
	} // frames

	// Update frame limits
	var frameVariants = g_Ext.xray.calculatedLimits.frameVariants;
	frameVariants.count = CalcPercentiles(frameEntries, XRayModes.Count);
	frameVariants.sum = CalcPercentiles(frameEntries, XRayModes.Sum);
	// Update scope limits
	var scopeVariants = g_Ext.xray.calculatedLimits.scopeVariants;
	scopeVariants.count = CalcPercentiles(scopeEntries, XRayModes.Count);
	scopeVariants.sum = CalcPercentiles(scopeEntries, XRayModes.Sum);
}

function ShowEvents(Show) {
	// Initial window setup
	var EventsWindow = document.getElementById('eventswindow');
	EventsWindow.innerHTML = '';
	EventsWindow.style.cssText = `
		cursor: pointer; user-select: none; font: 12px Courier New;
		flex-direction: column; overflow: hidden; scrollbar-color: #ffffff #000000;
		position: absolute; z-index: 5; text-align: left;
		padding: 0px; background-color: #000000;
		display: none;`;
	var hoverEvents;
	if (Show) {
		hoverEvents = GatherHoverEvents(nHoverToken, nHoverTokenIndex, nHoverTokenLogIndex, nHoverFrame)
		Show = (hoverEvents.length > 0);
	}
	if (Show) {
		EventsWindow.style.display = 'flex';
	} else {
		EventsWindow.style.display = 'none';
		return;
	}

	// Size
	var info = g_Ext.currentPlugin.displayInfo;
	var w = info.w;
	var h = info.h;

	// Prepare list of Events
	var head = '';
	var rows = '';
	var columnColors = ['#555555', '#333333'];
	var dspColumns = g_Ext.currentPlugin.displayColumns(hoverEvents);
	for (var j = 0; j < dspColumns.length; j++) {
		head += "<th style='background-color: " + columnColors[j % 2] + ";'>" + dspColumns[j] + "</th>";
	}
	for (var i = 0; i < hoverEvents.length; i++) {
		var ctx = hoverEvents[i];
		var dsp = g_Ext.currentPlugin.display(ctx);
		rows += "<tr>";
		for (var j = 0; j < dsp.length; j++) {
			rows += "<td>" + dsp[j] + "</td>";
		}
		rows += "</tr>";
	}

	// Compose the final html that contains the header and 2 switchable divs for
	// the list of events and the detailed info about 1 selected event
	var html = `
		<div style="padding: 2px;">
			<div id="xtooltip_list_header" style="display: none;"> <!-- flex -->
				<div id="xtooltip_list_close" style="">&#10006;&nbsp;Close</div>
				<div id="xtooltip_list_title" style="flex-grow: 1; text-align: right;"></div>
			</div>
				<div id="xtooltip_details_header" style="display: none;"> <!-- flex -->
				<div id="xtooltip_details_back">&#x1F868;&nbsp;Back</div>
			</div>
		</div>
		<div id="xtooltip_list" style="flex-grow: 1; overflow: auto; display: none;">
			<table style="white-space: nowrap;">
				<colgroup></colgroup>
				<thead>
					<tr>
		` + head + `
					</tr>
				</thead>
				<tbody>
		` + rows + `
				</tbody>
			</table>
		</div>
		<div id="xtooltip_details" style="cursor: auto; user-select: text; flex-grow: 1; overflow: auto; display: none;">
		</div>`;
	EventsWindow.innerHTML = html;

	// Install mouse handlers
	var XTitle = document.getElementById('xtooltip_list_title');
	var XList = document.getElementById('xtooltip_list');
	var XDetails = document.getElementById('xtooltip_details');
	var XListHrd = document.getElementById('xtooltip_list_header');
	var XDetailsHrd = document.getElementById('xtooltip_details_header');
	var XClose = document.getElementById('xtooltip_list_close');
	var XBack = document.getElementById('xtooltip_details_back');

	XTitle.textContent = g_Ext.currentPlugin.category + ' events';
	var BackFn = function() {
		XList.style.display = '';
		XListHrd.style.display = 'flex';
		XDetails.style.display = 'none';
		XDetailsHrd.style.display = 'none';
		XDetails.innerHTML = '';
	};
	BackFn();

	var DivOnFn = function() {
		this.style.backgroundColor = '#555555';
	};
	var DivOffFn = function() {
		this.style.backgroundColor = '';
	};
	XClose.addEventListener('click', function() {
		ShowEvents(false);
	});
	XBack.addEventListener('click', BackFn);
	XClose.addEventListener('mouseover', DivOnFn);
	XClose.addEventListener('mouseout', DivOffFn);
	XBack.addEventListener('mouseover', DivOnFn);
	XBack.addEventListener('mouseout', DivOffFn);

	// Display detailed info
	var RowClickFn = function(index) {
		if (!g_Ext.currentPlugin.detail)
			return;

		XList.style.display = 'none';
		XListHrd.style.display = 'none';
		XDetails.style.display = '';
		XDetailsHrd.style.display = 'flex';

		var ctx = hoverEvents[index];
		var dtl = g_Ext.currentPlugin.detail(ctx);
		var rows = '';
		for (var j = 0; j < dtl.fields.length; j++) {
			rows += "<tr style='background-color: #555555;'><td>" + dtl.headers[j] + "</td></tr>";
			rows += "<tr><td>" + dtl.fields[j] + "</td><tr>";
		}
		var html = "<table><tbody>" + rows + "</tbody></table>";
		XDetails.innerHTML = html;
		XDetails.scrollTop = 0;
		XDetails.scrollLeft = 0;
	};

	// Attach click event listener to each row
	var rows = EventsWindow.querySelectorAll('tbody tr');
	rows.forEach(function(row, index) {
		row.addEventListener('click', function(){ RowClickFn(index); });
		row.addEventListener('mouseover', DivOnFn);
		row.addEventListener('mouseout', DivOffFn);
	});

	// Calculate window pos
	var CanvasRect = CanvasDetailedView.getBoundingClientRect();
	var xOffset = 20;
	var yOffset = 20;
	var x = MouseDragX;
	var y = MouseDragY;
	if (x + w > CanvasRect.width) {
		x = CanvasRect.width - w;
	}
	if (y + h + yOffset > CanvasRect.height) {
		y = CanvasRect.height - h - yOffset;
		x += xOffset;
	}
	x += CanvasRect.left - 0;
	y += CanvasRect.top + yOffset;
	EventsWindow.style.left = x + 'px';
	EventsWindow.style.top = y + 'px';
	EventsWindow.style.width = w + 'px';
	EventsWindow.style.height = h + 'px';
}

function RawToEvent(ts, ti, tt, tl, k) {
	var e = {
		type: 0,
		data: 0,
		extra: new Uint8Array(),
		str: ""
	};

	var tsk = ts[k];
	e.type = tt[k] - EventBaseId;
	e.data = Number(tsk & 0x0003ffffffffffffn);
	var eventSize = Number((tsk >> 58n) & 0x3n);

	var labelIdHigh = Number(tsk >> 60n);
	var labelIdLow = ti[k];
	if (labelIdLow > 0) {
		// Label attached
		labelIdLow--;
		var isGlobal = false;
		if (labelIdHigh > 0)
		{
			labelIdHigh--;
			isGlobal = true;
		}
		var labelId = labelIdLow | (labelIdHigh << (2 * 8));
		e.str = isGlobal ? CGlobalLabels[labelId] : tl[labelId];
	}
	k++;

	if (eventSize > 0) {
		e.extra = new Uint8Array(eventSize * 10);
		const extraView = new DataView(e.extra.buffer);
		var offset = 0;
		for (var i = 0; i < eventSize; i++) {
			extraView.setBigUint64(offset, ts[k], true); // offset, value, little endian
			offset += 8;
			extraView.setUint16(offset, ti[k], true);
			offset += 2;
			k++;
		}
	}

	return e;
}

function SetCurrentPlugin(p) {
	if (g_Ext.currentPlugin) {
		g_Ext.currentPlugin.isActive = false;
	}
	p.isActive = true;
	g_Ext.currentPlugin = p;
}

function DefinePlugin(func) {
	g_Loader.pluginDefines = g_Loader.pluginDefines ? g_Loader.pluginDefines : [];
	g_Loader.pluginDefines.push(func);
}

function RegisterPlugin(p) {
	if (window.g_Reload)
		return;
	p.isActive = (p.isBackground == true);
	p.isHidden = false;
	p.isPresented = false;
	const id = p.baseId + EventBaseId;
	for (var i = 0; i < p.events.length; i++) {
		var entry = p.events[i];
		var isStrEntry = IsString(entry);
		var eventName = isStrEntry ? entry : entry.name;
		if (eventName == "")
			continue;
		var eventSubnames = isStrEntry ? [eventName] : entry.subnames;
		var isInPresetArr = [];
		eventSubnames.forEach(subname => {
			var found = p.preset && p.preset.events && p.preset.events.includes(subname);
			isInPresetArr.push(found);
		});
		g_Ext.typeLookup[id + i] = {
			id: p.baseId + i,
			name: eventName,
			subnames: eventSubnames,
			subSelections: isInPresetArr,
			plugin: p,
			isBackground: p.isBackground,
			isPresented: false,
			IsSelected: function() {
				const hasSubSelection = this.subSelections.some(Boolean);
				return hasSubSelection || this.isBackground;
			},
			IsActive: function() {
				return this.IsSelected() && this.plugin.isActive; 
			}
		};
	}
	g_Ext.plugins.push(p);
	return p;
}

function InitPluginStates() {
	g_Ext.hasVisiblePlugins = false;
	g_Ext.hasForegroundPlugins = false;
	var isPresetSet = false;
	g_Ext.plugins.forEach(function(p) {
		var shouldHide = (p.preset && p.preset.hideIfNoEvents == true && !p.isPresented);
		if (shouldHide) {
			p.isHidden = true;
			return;
		}
		if (!isPresetSet && p.isPresented && !p.isBackground) {
			isPresetSet = true;
			SetCurrentPlugin(p);
			if (p.preset && p.preset.mode != undefined) {
				g_Ext.xray.mode = p.preset.mode;
			}
		}
		g_Ext.hasVisiblePlugins = true;
		if (!p.isBackground) {
			g_Ext.hasForegroundPlugins = true;
		}
	});
	g_Ext.xray.barEnabled = isPresetSet;
}

function AdjustXRayStyle() {
	CanvasHistory.style.backgroundColor = g_Ext.xray.viewEnabled ? '#242424' : '#474747';
}

function MenuAddEntry(menuElement, id, text, clickFn, isCategory) {
	var newLi = document.createElement('li');
	newLi.id = id;

	var newA = document.createElement('a');
	newA.innerHTML = text;
	if (clickFn) {
		newA.href = "javascript:void(0)";
		newA.onclick = function() {
			if (newA.style.display != 'none') {
				clickFn();
			}
		};
	}
	if (isCategory == true) {
		newA.style.color = "black";
		newA.style.backgroundColor = GradToColor(0.6);
	}

	newLi.appendChild(newA);
	menuElement.appendChild(newLi);
}

function AdjustMenuItemsWidth(MenuElement) {
	// Adjust the width of all menu items according to max text length
	var maxLen = 0;
	var As = MenuElement.getElementsByTagName('a');
	for(var i = 0; i < As.length; ++i) {
		maxLen = Math.max(maxLen, As[i].textContent.length);
	}

	var LenStr = (5+(0+maxLen) * (1+FontWidth)) + 'px';
	var Lis = MenuElement.getElementsByTagName('li');
	for(var i = 0; i < Lis.length; ++i) {
		Lis[i].style['width'] = LenStr;
	}
}

function IsPluginsTabVisible() {
	var PluginsTab = document.getElementById('ilPlugins');
	return PluginsTab.style.display != 'none';
}

function InitPluginUi() {
	if (g_Ext.plugins.length == 0)
		return;

	AdjustXRayStyle();

	var PluginsTab = document.getElementById('ilPlugins');
	if (g_Ext.hasVisiblePlugins) {
		PluginsTab.style.display = '';
	}

	var PluginMenu = document.getElementById('PluginMenu');
	// Add a regular menu entry
	var AddEntry = function (id, text, clickFn, isCategory) {
		MenuAddEntry(PluginMenu, id, text, clickFn, isCategory);
	};
	// Add a value selector
	var AddSelector = function (id, text, thresholds) {
		var newLi = document.createElement('li');
		newLi.innerHTML = "<a>" + text + "<span id='" + id + "_dec'> \<\< </span><span id='"+ id +"'>00</span><span id='" + id + "_inc'> \>\> </span></a>";

		var sps = newLi.getElementsByTagName('span');
		for(var i = 0; i < sps.length; ++i) {
			var sp = sps[i];
			if (sp.id == id)
				continue;
			sp.style = "cursor: pointer;";
			sp.onclick = function(clickEvent) {
				var dir = clickEvent.target.textContent.includes("<<") ? -1 : 1;
				var val = (g_Ext.xray.mode == XRayModes.Count) ? thresholds.count : thresholds.sum;
				var dirK = dir * ((val + dir >= 90) ? 2 : 5);
				if (g_Ext.xray.mode == XRayModes.Count) {
					thresholds.count = clamp(Math.floor(thresholds.count + dirK), 0, 100);
				} else {
					thresholds.sum = clamp(Math.floor(thresholds.sum + dirK), 0, 100);
				}
				PluginUiUpdate(false, true);
			};
		}

		PluginMenu.appendChild(newLi);
	};

	AddEntry('xview', 'Main view&nbsp;&nbsp;&nbsp;&nbsp;[x]', function() {
		g_Ext.xray.viewEnabled = !g_Ext.xray.viewEnabled;
		AdjustXRayStyle();
		PluginUiUpdate(false, true);
	});
	AddEntry('xbar', 'Preview bar', function() {
		g_Ext.xray.barEnabled = !g_Ext.xray.barEnabled;
		PluginUiUpdate(false, true);
	});
	AddEntry('xmode', 'Mode:', function() {
		g_Ext.xray.mode = (g_Ext.xray.mode == XRayModes.Count) ? XRayModes.Sum : XRayModes.Count;
		PluginUiUpdate(false, true);
	});

	AddEntry('xthresholds', 'Thresholds', null, true);
	AddSelector('xthreshold_frames', 'Frames', g_Ext.xray.calculatedLimits.frameThresholds);
	AddSelector('xthreshold_bar', 'Bar&nbsp;&nbsp;&nbsp;', g_Ext.xray.calculatedLimits.barThresholds);
	AddSelector('xthreshold_main', 'Main&nbsp;&nbsp;', g_Ext.xray.calculatedLimits.scopeThresholds);

	AddEntry('', 'Categories', null, true);
	g_Ext.plugins.forEach(function(p, i) {
		if (p.isHidden)
			return;
		var pluginClosure = p;
		AddEntry('xplugin_' + i, p.category, function() {
			if (pluginClosure.isBackground) {
				pluginClosure.isActive = !pluginClosure.isActive;
				PluginUiUpdate();
			} else if (g_Ext.currentPlugin != pluginClosure) {
				SetCurrentPlugin(pluginClosure);
				PluginUiUpdate();
			}
		});
	});

	AddEntry('xevents', 'Events', null, true);
	g_Ext.typeLookup.forEach(function(e, i) {
		if (e.isBackground || e.plugin.isHidden)
			return;
		var entryClosure = e;
		e.subnames.forEach(function(subname, j) {
			AddEntry('xevent_' + i + '_' + j, subname, function() {
				entryClosure.subSelections[j] = !entryClosure.subSelections[j];
				PluginUiUpdate();
			});
		});
	});

	AdjustMenuItemsWidth(PluginMenu);
	PluginUiUpdate(true);
}

function PluginUiUpdate(isInitialCall, onlyThresholds) {
	// Update a regular menu item
	var UpdateElement = function(elId, isSel, isHid, text) {
		var el = document.getElementById(elId);
		var a = el.getElementsByTagName('a')[0];
		if (a) {
			if (isSel != undefined) {
				a.style['text-decoration'] = isSel ? 'underline' : 'none';
			}
			if (text != undefined) {
				a.innerHTML = text;
			}
			a.style.display = (isHid == true) ? 'none' : '';
		}
	};
	// Update a value selector
	var UpdateSelector = function (elId, thresholds, isHid) {
		var el = document.getElementById(elId);
		var val = (g_Ext.xray.mode == XRayModes.Count) ? thresholds.count : thresholds.sum;
		var valText = String(Math.floor(clamp(val, 0, 99)));
		valText = (valText.length < 2) ? "0" + valText : valText;
		el.innerHTML = valText;
		el.parentNode.style.display = (isHid == true) ? 'none' : '';
	};

	var noFg = !g_Ext.hasForegroundPlugins;
	UpdateElement('xview', g_Ext.xray.viewEnabled, noFg);
	UpdateElement('xbar', g_Ext.xray.barEnabled, noFg);

	var modeText = "Mode: " + (g_Ext.xray.mode == XRayModes.Count ? "#Count&nbsp;[c]" : "\u2211Sum&nbsp;&nbsp;&nbsp;[c]");
	UpdateElement('xmode', false, noFg, modeText)

	UpdateElement('xthresholds', undefined, noFg)
	UpdateSelector('xthreshold_frames', g_Ext.xray.calculatedLimits.frameThresholds, noFg);
	UpdateSelector('xthreshold_bar', g_Ext.xray.calculatedLimits.barThresholds, noFg);
	UpdateSelector('xthreshold_main', g_Ext.xray.calculatedLimits.scopeThresholds, noFg);

	g_Ext.plugins.forEach(function(p, i) {
		if (p.isHidden)
			return;
		UpdateElement('xplugin_' + i, p.isActive);
	});

	UpdateElement('xevents', undefined, noFg)
	g_Ext.typeLookup.forEach(function(e, i) {
		if (e.isBackground || e.plugin.isHidden)
			return;
		e.subnames.forEach(function(subname, j) {
			UpdateElement('xevent_' + i + '_' + j, e.subSelections[j], !e.plugin.isActive);
		});
	});

	if (!isInitialCall)
	{
		if (!onlyThresholds) {
			PrepareEvents();
		}
		UpdateThresholds();
		if (Initialized) {
			RequestRedraw();
		}
	}
}

function InitPluginVars() {
	// Main context of the extension code
	window.g_Ext = {
		plugins: [],
		currentPlugin: null,
		typeLookup: [],
		eventsPresented: false,
		knownEventsPresented: false,

		xray: {
			viewEnabled: false,
			barEnabled: false,
			mode: XRayModes.Count,
			barFrameHeight: BoxHeight * 0.8,
			barYOffset: BoxHeight,
			intensityPower: 0.33,
			smallScopesHighlighting: {
				thresholdWidth: 20,
				thresholdIntensity: 0.45,
				extraIntensity: 0.2,
			},
			autoLimits: true,
			selectedLimits: {
				frame: DeepCopy(TxType),
				scope: DeepCopy(TxType),
			},
			calculatedLimits: {
				frameVariants: {
					count: [],
					sum: [],
				},
				scopeVariants: {
					count: [],
					sum: [],
				},
				frameThresholds: {
					count: 100,
					sum: 100,
				},
				barThresholds: {
					count: 45,
					sum: 60,
				},
				scopeThresholds: {
					count: 85,
					sum: 90,
				},
			}
		},

		spans: [],
		reset: function() {
			this.spans = [];
		},
	};
	
	g_Loader.pluginDefines.forEach(func => {
		var p = func();
		RegisterPlugin(p);
	});
	g_Loader.pluginDefines = [];
}

//////////////////////////////////////////////////////////////////////////////////////////
// Plugins

DefinePlugin(function() { return {
	category: "Span",
	events: ["Begin", "End"],
	baseId: 29,
	isBackground: true,
	preset: {
		hideIfNoEvents: true,
	},
	decode: function(evt, full) {
		const extraView = new DataView(evt.extra.buffer);
		var tsRaw = evt.data;
		var tsNum = tsRaw * g_TickToTimeScale;
		var ts = tsNum + Frames[0].framestart;
		var hasColor = (evt.extra.length > 0);
		var color = hasColor ? extraView.getUint32(0, true) : 0;
		var ctx = {
			evt: evt,
			isBegin: evt.type == this.baseId,
			ts: ts,
			color: color,
			hasColor: hasColor,
			str: evt.str,
		};
		return ctx;
	},
	prepare: function(ctx) {
		if (g_Ext.spans[ctx.str] == undefined) {
			g_Ext.spans[ctx.str] = [];
		}
		var spanInstances = g_Ext.spans[ctx.str];
		var newInstance = false;
		if (ctx.isBegin || spanInstances.length == 0) {
			spanInstances.push(DeepCopy(SpanType));
			newInstance = true;
		}
		var span = spanInstances[spanInstances.length - 1];
		if (newInstance) {
			// Default span color
			span.colorBg = '#8c62aa';
			span.colorLine = '#5c42aa';
			// Default timestamps
			span.tsBegin = Frames[0].framestart;
			span.tsEnd = Frames[Frames.length - 1].frameend;
		}
		if (ctx.isBegin) {
			span.tsBegin = ctx.ts;
		} else {
			span.tsEnd = ctx.ts;
		}
		span.name = ctx.str;
		if (ctx.hasColor) {
			span.colorBg = "#" + DecimalToHex(ctx.color, 6);
			span.colorLine = "#" + DecimalToHex(ColorUint32Multiply(ctx.color, 0.65), 6);
		}
	},
}});

DefinePlugin(function() { return {
	category: "Memory",
	events: ["Alloc", "Free", "Realloc"],
	baseId: 17,
	preset: {
		mode: XRayModes.Count,
		events: ["Alloc"],
		hideIfNoEvents: true,
	},
	decorate: ValueToBytes,
	decode: function(evt, full) {
		var data = BigInt(evt.data);
		var count = Number((data >> 32n) & 0xffffn);
		var ctx = {
			value: Number(data & 0xffffffffn),
			count: count ? count : 1,
			evt: evt,
		};
		if (full) {
			ctx.eventName = this.events[evt.type - this.baseId];
		}
		return ctx;
	},
	displayInfo: {
		w: 550,
		h: 250,
	},
	displayColumns: function(ctxs) {
		return ["#", "Action", "Size", "Type", "Caller"];
	},
	display: function(ctx) {
		var dsp = [
			ctx.count,
			ctx.eventName,
			"<div style='text-align: right;'>" + this.decorate(ctx.value) + "</div>",
			"",
			"",
		];
		return dsp;
	},
	detail: function(ctx) {
		var dtl = {
			headers: ["Action", "Size", "Type Info", "Call Stack"],
			fields: [
				ctx.eventName,
				this.decorate(ctx.value),
				"<pre>" + StrHtmlEscape("") + "</pre>",
				"<pre>" + StrHtmlEscape("") + "</pre>",
			],
		};
		return dtl;
	},
}});

DefinePlugin(function() { return {
	category: "MemoryScope",
	events: [ {name:"MemoryScopeStats",subnames:["Alloc","Free"]} ],
	baseId: 20,
	preset: {
		mode: XRayModes.Count,
		events: ["Alloc"],
		hideIfNoEvents: true,
	},
	tooltipBarFrames: ["Memory operations' intensity"],
	tooltipBarDetailed: ["Memory operations' intensity", "localized within frames.", "Use X-Ray for details."],
	decorate: ValueToBytes,
	decode: function(evt, full) {
		var count = 0;
		var value = 0;
		var data = BigInt(evt.data);
		const extraView = new DataView(evt.extra.buffer);
		const typeLookup = g_Ext.typeLookup[evt.type + EventBaseId];
		const allocSelected = typeLookup.subSelections[0];
		const freeSelected = typeLookup.subSelections[1];
		if (allocSelected) {
			var allocCounter = Number((data >> 24n) & 0xffffffn);
			var allocSize = extraView.getUint32(4, true);
			count += allocCounter;
			value += allocSize;
		}
		if (freeSelected) {
			var freeCounter = Number(data & 0xffffffn);
			var freeSize = extraView.getUint32(0, true);
			count += freeCounter;
			value += freeSize;
		}
		var ctx = {
			value: value,
			count: count,
			evt: evt,
		};
		return ctx;
	},
}});

var eventsCurl = ["CurlRx", "CurlTx"];
var eventsReplica = ["ReplicaRx", "ReplicaTx"];
var eventsNet = [...eventsCurl, ...eventsReplica];
var eventNetRxTag = "Rx";
var netIdBase = 129;
var netIdNames = [];
var netTypeNames = [];
DefinePlugin(function() { return {
	category: "Network",
	events: eventsNet,
	baseId: 1,
	preset: {
		mode: XRayModes.Sum,
		events: eventsNet,
		hideIfNoEvents: true,
	},
	decorate: ValueToBytes,
	decode: function(evt, full) {
		var ctx = {
			value: Number(BigInt(evt.data) & 0xffffffffn),
			count: 1,
			evt: evt,
		};
		if (full) {
			ctx.eventName = this.events[evt.type - this.baseId];
			ctx.isCurl = eventsCurl.includes(ctx.eventName);
			ctx.isReplica = eventsReplica.includes(ctx.eventName);
			ctx.subsystemName = ctx.isCurl ? "cURL" : "Replica";
			ctx.directionName = ctx.eventName.endsWith(eventNetRxTag) ? "Rx" : "Tx";
			ctx.str = evt.str;
			if (ctx.isCurl) {
				var isHeader = (BigInt(evt.data) >> 32n) != 0n;
				ctx.pktType = isHeader ? "HEADER" : "BODY";
			} else if (ctx.isReplica) {
				const extraView = new DataView(evt.extra.buffer);
				var pktId = extraView.getUint32(0, true);
				var pktType = extraView.getUint32(4, true);
				var pktSubtype = extraView.getUint32(8, true);
				ctx.pktId = (pktId >= netIdBase && pktId - netIdBase < netIdNames.length) ? netIdNames[pktId - netIdBase] : pktId;
				ctx.pktType = (pktType < netTypeNames.length) ? netTypeNames[pktType] : pktType;
				ctx.pktSubtype = pktSubtype;
			}
		}
		return ctx;
	},
	displayInfo: {
		w: 550,
		h: 250,
	},
	displayColumns: function(ctxs) {
		var hasCurl = false;
		var hasReplica = false;
		ctxs.forEach(function(ctx) {
			hasCurl = hasCurl || ctx.isCurl;
			hasReplica = hasReplica || ctx.isReplica;
		});
		var columns4 = [];
		var columns6 = [];
		if (hasCurl) {
			columns6.push("URL");
		}
		if (hasReplica) {
			columns4.push("ID");
			columns6.push("Subtype");
		}
		return ["#", "Subsystem", "Direction", "Size", columns4.join("/"), "Type", columns6.join("/")];
	},
	display: function(ctx) {
		var dsp = [
			ctx.count,
			ctx.subsystemName,
			ctx.directionName,
			"<div style='text-align: right;'>" + this.decorate(ctx.value) + "</div>",
		];
		if (ctx.isCurl) {
			dsp.push(
				"",
				ctx.pktType,
				ctx.str,
			);
		} else if (ctx.isReplica) {
			dsp.push(
				ctx.pktId,
				ctx.pktType,
				ctx.pktSubtype,
			);
		}
		return dsp;
	},
	detail: function(ctx) {
		var headers = ["#", "Subsystem", "Direction", "Size"]
		var fields = [
			ctx.count,
			ctx.subsystemName,
			ctx.directionName,
			this.decorate(ctx.value),
		];
		if (ctx.isCurl) {
			headers.push(
				"Packet type",
				"URL",
			);
			fields.push(
				ctx.pktType,
				ctx.str,
			);
		} else if (ctx.isReplica) {
			headers.push(
				"Packet ID",
				"Packet type",
				"Packet subtype",
			);
			fields.push(
				ctx.pktId,
				ctx.pktType,
				ctx.pktSubtype
			);
		}
		var dtl = {
			headers: headers,
			fields: fields,
		};
		return dtl;
	},
}});

var eventsTest = ["Test0", "Test1", "Test2", "Test3", "Test4", "Test5", "Test6", "Test7"];
DefinePlugin(function() { return {
	category: "Test",
	events: eventsTest,
	baseId: 119,
	preset: {
		mode: XRayModes.Count,
		events: eventsTest,
		hideIfNoEvents: true,
	},
	decorate: ValueToCount,
	decode: function(evt, full) {
		var ctx = {
			value: evt.data,
			count: 1,
			evt: evt,
		};
		if (full) {
			var extra = "";
			for(var i = 0; i < evt.extra.length; i++) {
				extra += DecimalToHex(evt.extra[i], 2);
				if (i < evt.extra.length - 1)
					extra += " ";
			}
			ctx.eventName = this.events[evt.type - this.baseId];
			ctx.dataHex = "0x" + DecimalToHex(evt.data, 14);
			ctx.extraDataHex = extra;
			ctx.str = evt.str;
		}
		return ctx;
	},
	displayInfo: {
		w: 550,
		h: 250,
	},
	displayColumns: function(ctxs) {
		return ["#", "MpEvent", "Data50bit", "ExtraData20bytes", "String"];
	},
	display: function(ctx) {
		var dsp = [
			ctx.count,
			ctx.eventName,
			ctx.dataHex,
			ctx.extraDataHex,
			ctx.str,
		];
		return dsp;
	},
	detail: function(ctx) {
		var dtl = {
			headers: this.displayColumns(undefined),
			fields: this.display(ctx),
		};
		return dtl;
	},
}});

//////////////////////////////////////////////////////////////////////////////////////////
// Initialization

function InitMain() {
	ShowUiRoot();
	InitViewerVars();
	InitPluginVars();
	RegisterInputListeners()
	InitGroups();

	ScanEvents(); // Events
	InitPluginStates();
	PrepareEvents();
	UpdateThresholds();

	ReadCookie();
	MeasureFont();

	InitToolsExportMenu();
	InitAuxMenus();
	InitPluginUi(); // Events

	InitThreadMenu();
	InitGroupMenu();
	InitFrameInfo();
	UpdateThreadMenu();
	ResizeCanvas();

	Preprocess();

	OnPageReady();
	Draw(1);
	AutoRedraw();

	g_Loader.isViewerInitialized = true;
	ProcessUrlArgs();
}

if (!window.g_Reload) {
	InitCssHtml();
	InitDataVars();
	InitData().then(() => {
		InitMain();
	}).catch(error => {
		console.error(error);
		HaltPage();
    });
}
