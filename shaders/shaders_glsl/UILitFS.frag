#version 110

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
uniform vec4 CB2[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec3 VARYING4;

void main()
{
    vec4 _411 = texture2D(DiffuseMapTexture, VARYING0);
    vec4 _417 = vec4(1.0, 1.0, 1.0, _411.x);
    bvec4 _419 = bvec4(CB2[0].y > 0.5);
    vec4 _424 = VARYING1 * vec4(_419.x ? _417.x : _411.x, _419.y ? _417.y : _411.y, _419.z ? _417.z : _411.z, _419.w ? _417.w : _411.w);
    vec3 _426 = _424.xyz;
    vec3 _468 = vec3(CB0[15].x);
    float _570 = clamp(dot(step(CB0[20].xyz, abs(VARYING3 - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _514 = VARYING3.yzx - (VARYING3.yzx * _570);
    vec4 _524 = vec4(clamp(_570, 0.0, 1.0));
    vec4 _525 = mix(texture3D(LightMapTexture, _514), vec4(0.0), _524);
    vec4 _530 = mix(texture3D(LightGridSkylightTexture, _514), vec4(1.0), _524);
    vec4 _580 = texture2D(ShadowMapTexture, VARYING4.xy);
    vec3 _444 = mix(_426, _426 * _426, _468).xyz;
    vec3 _456 = mix(_444, (min(((_525.xyz * (_525.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _530.x), vec3(CB0[17].w)) + (VARYING2 * ((1.0 - ((step(_580.x, VARYING4.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING4.z - 0.5)), 0.0, 1.0)) * _580.y)) * _530.y))) * _444, vec3(CB2[0].z)).xyz;
    vec3 _625 = mix(_456, sqrt(clamp(_456 * CB0[15].z, vec3(0.0), vec3(1.0))), _468);
    gl_FragData[0] = vec4(_625.x, _625.y, _625.z, _424.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s0
