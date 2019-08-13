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
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    vec4 _673 = texture2D(DiffuseMapTexture, VARYING0.xy);
    vec3 _576 = (mix(vec3(1.0), VARYING2.xyz, vec3(_673.w)) * _673.xyz).xyz;
    vec3 _681 = vec3(CB0[15].x);
    float _783 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _727 = VARYING3.yzx - (VARYING3.yzx * _783);
    vec4 _737 = vec4(clamp(_783, 0.0, 1.0));
    vec4 _738 = mix(texture3D(LightMapTexture, _727), vec4(0.0), _737);
    vec4 _743 = mix(texture3D(LightGridSkylightTexture, _727), vec4(1.0), _737);
    vec4 _793 = texture2D(ShadowMapTexture, VARYING6.xy);
    float _806 = (1.0 - ((step(_793.x, VARYING6.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * _793.y)) * _743.y;
    vec3 _606 = ((min(((_738.xyz * (_738.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _743.x), vec3(CB0[17].w)) + (VARYING5.xyz * _806)) * mix(_576, _576 * _576, _681).xyz) + (CB0[10].xyz * (VARYING5.w * _806));
    vec4 _935 = vec4(_606.x, _606.y, _606.z, vec4(0.0).w);
    _935.w = VARYING2.w;
    vec3 _853 = mix(CB0[14].xyz, mix(_935.xyz, sqrt(clamp(_935.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _681).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_853.x, _853.y, _853.z, _935.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
