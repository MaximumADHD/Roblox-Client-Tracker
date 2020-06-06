struct IBLDebugParams
{
    mat4 World;
    vec4 Params;
    vec4 AvgIrradianceIndoor;
    vec4 AvgIrradianceOutdoor;
    vec4 SkyCubeMapSize[6];
    vec4 SkyCubeMap[6][16];
};