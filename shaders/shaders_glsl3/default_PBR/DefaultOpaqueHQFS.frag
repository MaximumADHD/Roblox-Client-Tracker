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
    vec3 Exposure;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
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

uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = (texture(DiffuseMapTexture, VARYING0.xy) * VARYING2).xyz;
    float f1 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f2 = VARYING3.yzx - (VARYING3.yzx * f1);
    vec4 f3 = vec4(clamp(f1, 0.0, 1.0));
    vec4 f4 = mix(texture(LightMapTexture, f2), vec4(0.0), f3);
    vec4 f5 = mix(texture(LightGridSkylightTexture, f2), vec4(1.0), f3);
    float f6 = f5.x;
    vec4 f7 = texture(ShadowMapTexture, VARYING6.xy);
    float f8 = (1.0 - ((step(f7.x, VARYING6.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * f7.y)) * f5.y;
    vec3 f9 = normalize(VARYING4.xyz);
    vec3 f10 = (f0 * f0).xyz;
    float f11 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec3 f12 = normalize(VARYING5.xyz);
    float f13 = max(VARYING5.w, 0.04500000178813934326171875);
    float f14 = f13 * 5.0;
    vec3 f15 = vec4(reflect(-f9, f12), f14).xyz;
    vec4 f16 = texture(PrecomputedBRDFTexture, vec2(f13, max(9.9999997473787516355514526367188e-05, dot(f12, f9))));
    vec3 f17 = mix(vec3(0.039999999105930328369140625), f10, vec3(VARYING6.w));
    vec3 f18 = -CB0[11].xyz;
    vec3 f19 = normalize(f18 + f9);
    float f20 = dot(f12, f18);
    float f21 = clamp(f20, 0.0, 1.0);
    float f22 = f13 * f13;
    float f23 = max(0.001000000047497451305389404296875, dot(f12, f19));
    float f24 = dot(f18, f19);
    float f25 = 1.0 - f24;
    float f26 = f25 * f25;
    float f27 = (f26 * f26) * f25;
    vec3 f28 = vec3(f27) + (f17 * (1.0 - f27));
    float f29 = f22 * f22;
    float f30 = (((f23 * f29) - f23) * f23) + 1.0;
    float f31 = 1.0 - (VARYING6.w * f11);
    float f32 = f16.x;
    float f33 = f16.y;
    vec3 f34 = ((f17 * f32) + vec3(f33)) / vec3(f32 + f33);
    vec3 f35 = (vec3(1.0) - (f34 * f11)) * f31;
    vec3 f36 = f12 * f12;
    bvec3 f37 = lessThan(f12, vec3(0.0));
    vec3 f38 = vec3(f37.x ? f36.x : vec3(0.0).x, f37.y ? f36.y : vec3(0.0).y, f37.z ? f36.z : vec3(0.0).z);
    vec3 f39 = f36 - f38;
    float f40 = f39.x;
    float f41 = f39.y;
    float f42 = f39.z;
    float f43 = f38.x;
    float f44 = f38.y;
    float f45 = f38.z;
    vec3 f46 = (mix(textureLod(PrefilteredEnvIndoorTexture, f15, f14).xyz, textureLod(PrefilteredEnvTexture, f15, f14).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f12.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f6)) * f34) * f11;
    vec3 f47 = ((((((((((vec3(1.0) - (f28 * f11)) * f31) * CB0[10].xyz) * f21) + ((CB0[12].xyz * (1.0 - (VARYING6.w * CB0[26].w))) * clamp(-f20, 0.0, 1.0))) * f8) + (f35 * (((((((CB0[35].xyz * f40) + (CB0[37].xyz * f41)) + (CB0[39].xyz * f42)) + (CB0[36].xyz * f43)) + (CB0[38].xyz * f44)) + (CB0[40].xyz * f45)) + (((((((CB0[29].xyz * f40) + (CB0[31].xyz * f41)) + (CB0[33].xyz * f42)) + (CB0[30].xyz * f43)) + (CB0[32].xyz * f44)) + (CB0[34].xyz * f45)) * f6)))) + (CB0[27].xyz + (CB0[28].xyz * f6))) * f10) + (((((f28 * ((f29 + (f29 * f29)) / (((f30 * f30) * ((f24 * 3.0) + 0.5)) * ((f23 * 0.75) + 0.25)))) * CB0[10].xyz) * f21) * f8) + f46)) + ((f4.xyz * (f4.w * 120.0)).xyz * mix(f10, f46 * (1.0 / (max(max(f46.x, f46.y), f46.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f35) * f11) * (1.0 - f6)));
    vec4 f48 = vec4(f47.x, f47.y, f47.z, vec4(0.0).w);
    f48.w = 1.0;
    vec3 f49 = mix(CB0[14].xyz, (sqrt(clamp(f48.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f49.x, f49.y, f49.z, f48.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
