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

struct LightShadowGPUTransform
{
    mat4 transform;
};

uniform vec4 CB0[47];
uniform vec4 CB8[24];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D ShadowAtlasTexture;
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
    vec4 f0 = texture(DiffuseMapTexture, VARYING0.xy) * VARYING2;
    vec3 f1 = normalize(VARYING5.xyz);
    vec3 f2 = -CB0[11].xyz;
    float f3 = dot(f1, f2);
    vec3 f4 = f0.xyz;
    float f5 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f6 = VARYING3.yzx - (VARYING3.yzx * f5);
    vec4 f7 = vec4(clamp(f5, 0.0, 1.0));
    vec4 f8 = mix(texture(LightMapTexture, f6), vec4(0.0), f7);
    vec4 f9 = mix(texture(LightGridSkylightTexture, f6), vec4(1.0), f7);
    float f10 = f9.x;
    float f11 = f9.y;
    vec3 f12 = VARYING6.xyz - CB0[41].xyz;
    vec3 f13 = VARYING6.xyz - CB0[42].xyz;
    vec3 f14 = VARYING6.xyz - CB0[43].xyz;
    vec4 f15 = vec4(VARYING6.xyz, 1.0) * mat4(CB8[((dot(f12, f12) < CB0[41].w) ? 0 : ((dot(f13, f13) < CB0[42].w) ? 1 : ((dot(f14, f14) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f12, f12) < CB0[41].w) ? 0 : ((dot(f13, f13) < CB0[42].w) ? 1 : ((dot(f14, f14) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f12, f12) < CB0[41].w) ? 0 : ((dot(f13, f13) < CB0[42].w) ? 1 : ((dot(f14, f14) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f12, f12) < CB0[41].w) ? 0 : ((dot(f13, f13) < CB0[42].w) ? 1 : ((dot(f14, f14) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f16 = textureLod(ShadowAtlasTexture, f15.xy, 0.0);
    vec2 f17 = vec2(0.0);
    f17.x = CB0[45].z;
    vec2 f18 = f17;
    f18.y = CB0[45].w;
    float f19 = (2.0 * f15.z) - 1.0;
    float f20 = exp(CB0[45].z * f19);
    float f21 = -exp((-CB0[45].w) * f19);
    vec2 f22 = (f18 * CB0[46].y) * vec2(f20, f21);
    vec2 f23 = f22 * f22;
    float f24 = f16.x;
    float f25 = max(f16.y - (f24 * f24), f23.x);
    float f26 = f20 - f24;
    float f27 = f16.z;
    float f28 = max(f16.w - (f27 * f27), f23.y);
    float f29 = f21 - f27;
    float f30 = (f3 > 0.0) ? mix(f11, mix(min((f20 <= f24) ? 1.0 : clamp(((f25 / (f25 + (f26 * f26))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f21 <= f27) ? 1.0 : clamp(((f28 / (f28 + (f29 * f29))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f11, clamp((length(VARYING6.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f31 = normalize(VARYING4.xyz);
    vec3 f32 = (f4 * f4).xyz;
    float f33 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    float f34 = max(VARYING5.w, 0.04500000178813934326171875);
    float f35 = f34 * 5.0;
    vec3 f36 = vec4(reflect(-f31, f1), f35).xyz;
    vec4 f37 = texture(PrecomputedBRDFTexture, vec2(f34, max(9.9999997473787516355514526367188e-05, dot(f1, f31))));
    vec3 f38 = mix(vec3(0.039999999105930328369140625), f32, vec3(VARYING6.w));
    vec3 f39 = normalize(f2 + f31);
    float f40 = clamp(f3, 0.0, 1.0);
    float f41 = f34 * f34;
    float f42 = max(0.001000000047497451305389404296875, dot(f1, f39));
    float f43 = dot(f2, f39);
    float f44 = 1.0 - f43;
    float f45 = f44 * f44;
    float f46 = (f45 * f45) * f44;
    vec3 f47 = vec3(f46) + (f38 * (1.0 - f46));
    float f48 = f41 * f41;
    float f49 = (((f42 * f48) - f42) * f42) + 1.0;
    float f50 = 1.0 - (VARYING6.w * f33);
    float f51 = f37.x;
    float f52 = f37.y;
    vec3 f53 = ((f38 * f51) + vec3(f52)) / vec3(f51 + f52);
    vec3 f54 = (vec3(1.0) - (f53 * f33)) * f50;
    vec3 f55 = f1 * f1;
    bvec3 f56 = lessThan(f1, vec3(0.0));
    vec3 f57 = vec3(f56.x ? f55.x : vec3(0.0).x, f56.y ? f55.y : vec3(0.0).y, f56.z ? f55.z : vec3(0.0).z);
    vec3 f58 = f55 - f57;
    float f59 = f58.x;
    float f60 = f58.y;
    float f61 = f58.z;
    float f62 = f57.x;
    float f63 = f57.y;
    float f64 = f57.z;
    vec3 f65 = (mix(textureLod(PrefilteredEnvIndoorTexture, f36, f35).xyz, textureLod(PrefilteredEnvTexture, f36, f35).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f1.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f10)) * f53) * f33;
    vec3 f66 = (((((((((vec3(1.0) - (f47 * f33)) * f50) * CB0[10].xyz) * f40) * f30) + (f54 * (((((((CB0[35].xyz * f59) + (CB0[37].xyz * f60)) + (CB0[39].xyz * f61)) + (CB0[36].xyz * f62)) + (CB0[38].xyz * f63)) + (CB0[40].xyz * f64)) + (((((((CB0[29].xyz * f59) + (CB0[31].xyz * f60)) + (CB0[33].xyz * f61)) + (CB0[30].xyz * f62)) + (CB0[32].xyz * f63)) + (CB0[34].xyz * f64)) * f10)))) + (CB0[27].xyz + (CB0[28].xyz * f10))) * f32) + (((((f47 * ((f48 + (f48 * f48)) / (((f49 * f49) * ((f43 * 3.0) + 0.5)) * ((f42 * 0.75) + 0.25)))) * CB0[10].xyz) * f40) * f30) + f65)) + ((f8.xyz * (f8.w * 120.0)).xyz * mix(f32, f65 * (1.0 / (max(max(f65.x, f65.y), f65.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f54) * f33) * (1.0 - f10)));
    vec4 f67 = vec4(f66.x, f66.y, f66.z, vec4(0.0).w);
    f67.w = f0.w;
    vec3 f68 = mix(CB0[14].xyz, (sqrt(clamp(f67.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f68.x, f68.y, f68.z, f67.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3
