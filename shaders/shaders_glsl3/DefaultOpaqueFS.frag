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

in vec4 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec3 _509 = (texture(DiffuseMapTexture, VARYING0.xy) * VARYING2).xyz;
    vec3 _587 = vec3(CB0[15].x);
    float _689 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _633 = VARYING3.yzx - (VARYING3.yzx * _689);
    vec4 _643 = vec4(clamp(_689, 0.0, 1.0));
    vec4 _644 = mix(texture(LightMapTexture, _633), vec4(0.0), _643);
    vec4 _649 = mix(texture(LightGridSkylightTexture, _633), vec4(1.0), _643);
    vec4 _699 = texture(ShadowMapTexture, VARYING6.xy);
    float _712 = (1.0 - ((step(_699.x, VARYING6.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * _699.y)) * _649.y;
    vec3 _539 = ((min(((_644.xyz * (_644.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _649.x), vec3(CB0[17].w)) + (VARYING5.xyz * _712)) * mix(_509, _509 * _509, _587).xyz) + (CB0[10].xyz * (VARYING5.w * _712));
    vec4 _838 = vec4(_539.x, _539.y, _539.z, vec4(0.0).w);
    _838.w = 1.0;
    vec3 _759 = mix(CB0[14].xyz, mix(_838.xyz, sqrt(clamp(_838.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _587).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_759.x, _759.y, _759.z, _838.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
