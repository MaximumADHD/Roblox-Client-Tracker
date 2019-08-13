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
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D AlbedoMapTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec3 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec4 _788 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec4 _756 = ((texture2D(AlbedoMapTexture, _788.xy).yxzw * VARYING0.x) + (texture2D(AlbedoMapTexture, _788.zw).yxzw * VARYING0.y)) + (texture2D(AlbedoMapTexture, (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw).yxzw * VARYING0.z);
    vec2 _760 = _756.yz - vec2(0.5);
    float _824 = VARYING7.x * _756.x;
    float _828 = _760.x;
    float _832 = _760.y;
    float _834 = (VARYING7.y * _828) - (VARYING7.z * _832);
    float _844 = (VARYING7.z * _828) + (VARYING7.y * _832);
    float _861 = _824 - _844;
    vec3 _673 = vec4(vec3(_861, _824, _861) + (vec3(_834, _844, _834) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _880 = vec3(CB0[15].x);
    float _982 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _926 = VARYING4.yzx - (VARYING4.yzx * _982);
    vec4 _936 = vec4(clamp(_982, 0.0, 1.0));
    vec4 _937 = mix(texture3D(LightMapTexture, _926), vec4(0.0), _936);
    vec4 _942 = mix(texture3D(LightGridSkylightTexture, _926), vec4(1.0), _936);
    vec4 _992 = texture2D(ShadowMapTexture, VARYING5.xy);
    vec3 _693 = (min(((_937.xyz * (_937.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _942.x), vec3(CB0[17].w)) + (VARYING6 * ((1.0 - ((step(_992.x, VARYING5.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * _992.y)) * _942.y))) * mix(_673, _673 * _673, _880).xyz;
    vec4 _1154 = vec4(_693.x, _693.y, _693.z, vec4(0.0).w);
    _1154.w = 1.0;
    vec3 _1058 = mix(CB0[14].xyz, mix(_1154.xyz, sqrt(clamp(_1154.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _880).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(_1058.x, _1058.y, _1058.z, _1154.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
