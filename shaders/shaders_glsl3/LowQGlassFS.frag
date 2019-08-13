#version 150

struct Globals
{
    mat4 ViewProjection;
    vec4 ViewRight;
    vec4 ViewUp;
    vec4 ViewDir;
    vec3 CameraPosition;
    vec3 AmbientColor;
    vec3 SkyAmbient;
    vec3 Lamp0Color;
    vec3 Lamp0Dir;
    vec3 Lamp1Color;
    vec4 FogParams;
    vec4 FogColor_GlobalForceFieldTime;
    vec4 Technology_Exposure;
    vec4 LightBorder;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 CascadeSphere0;
    vec4 CascadeSphere1;
    vec4 CascadeSphere2;
    vec4 CascadeSphere3;
    float hybridLerpDist;
    float hybridLerpSlope;
    float evsmPosExp;
    float evsmNegExp;
    float globalShadow;
    float shadowBias;
    float shadowAlphaRef;
    float debugFlagsShadows;
};

uniform vec4 CB0[32];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform samplerCube EnvironmentMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 _606 = (texture(DiffuseMapTexture, VARYING0.xy).xyz * VARYING2.xyz).xyz;
    vec3 _709 = vec3(CB0[15].x);
    float _811 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _755 = VARYING3.yzx - (VARYING3.yzx * _811);
    vec4 _765 = vec4(clamp(_811, 0.0, 1.0));
    vec4 _766 = mix(texture(LightMapTexture, _755), vec4(0.0), _765);
    vec4 _771 = mix(texture(LightGridSkylightTexture, _755), vec4(1.0), _765);
    float _788 = _771.x;
    vec4 _821 = texture(ShadowMapTexture, VARYING7.xy);
    float _834 = (1.0 - ((step(_821.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _821.y)) * _771.y;
    vec3 _625 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, VARYING5.xyz)).xyz;
    vec3 _665 = ((min(((_766.xyz * (_766.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _788), vec3(CB0[17].w)) + (VARYING6.xyz * _834)) * ((mix(vec3(1.0), mix(_625, (_625 * _625) * CB0[15].w, _709), vec3(_788)) * VARYING7.w) + (mix(_606, _606 * _606, _709).xyz * (VARYING2.w - VARYING7.w))).xyz) + (CB0[10].xyz * (VARYING6.w * _834));
    vec4 _995 = vec4(_665.x, _665.y, _665.z, vec4(0.0).w);
    _995.w = VARYING2.w;
    vec3 _695 = mix(_995.xyz, sqrt(clamp(_995.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _709);
    _entryPointOutput = mix(vec4(CB0[14].xyz, 1.0), vec4(_695.x, _695.y, _695.z, _995.w), vec4(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$EnvironmentMapTexture=s2
