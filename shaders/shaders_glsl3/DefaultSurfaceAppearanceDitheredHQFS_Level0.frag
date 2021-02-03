#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    float f2 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f3 = texture(DiffuseMapTexture, VARYING0);
    float f4 = f3.w;
    float f5 = fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))));
    if (smoothstep(0.0, 1.0, f4) < (f5 + ((fract(CB0[47].z) - f5) * clamp((0.001000000047497451305389404296875 * floor(CB0[47].z)) * VARYING4.w, 0.0, 1.0))))
    {
        discard;
    }
    vec4 f6 = vec4(mix(VARYING2.xyz, f3.xyz, vec3(f4)), VARYING2.w);
    vec4 f7 = vec4(f3.xyz, VARYING2.w * f4);
    bvec4 f8 = bvec4(CB3[0].x != 0.0);
    vec4 f9 = vec4(f8.x ? f6.x : f7.x, f8.y ? f6.y : f7.y, f8.z ? f6.z : f7.z, f8.w ? f6.w : f7.w);
    vec2 f10 = texture(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    float f12 = sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0));
    vec2 f13 = vec3(f11, f12).xy * f2;
    vec4 f14 = texture(SpecularMapTexture, VARYING0);
    vec3 f15 = normalize(((VARYING6.xyz * f13.x) + ((cross(VARYING5.xyz, VARYING6.xyz) * VARYING6.w) * f13.y)) + (VARYING5.xyz * f12));
    vec3 f16 = f9.xyz;
    vec3 f17 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f18 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f19 = VARYING3.yzx - (VARYING3.yzx * f18);
    vec4 f20 = vec4(clamp(f18, 0.0, 1.0));
    vec4 f21 = mix(texture(LightMapTexture, f19), vec4(0.0), f20);
    vec4 f22 = mix(texture(LightGridSkylightTexture, f19), vec4(1.0), f20);
    vec3 f23 = (f21.xyz * (f21.w * 120.0)).xyz;
    float f24 = f22.x;
    vec4 f25 = texture(ShadowMapTexture, f17.xy);
    float f26 = f17.z;
    vec3 f27 = (f16 * f16).xyz;
    float f28 = CB0[26].w * f2;
    float f29 = max(f14.y, 0.04500000178813934326171875);
    vec3 f30 = reflect(-f1, f15);
    float f31 = f29 * 5.0;
    vec3 f32 = vec4(f30, f31).xyz;
    vec4 f33 = texture(PrecomputedBRDFTexture, vec2(f29, max(9.9999997473787516355514526367188e-05, dot(f15, f1))));
    float f34 = f14.x * f28;
    vec3 f35 = mix(vec3(0.039999999105930328369140625), f27, vec3(f34));
    vec3 f36 = -CB0[11].xyz;
    float f37 = dot(f15, f36) * ((1.0 - ((step(f25.x, f26) * clamp(CB0[24].z + (CB0[24].w * abs(f26 - 0.5)), 0.0, 1.0)) * f25.y)) * f22.y);
    vec3 f38 = normalize(f36 + f1);
    float f39 = clamp(f37, 0.0, 1.0);
    float f40 = f29 * f29;
    float f41 = max(0.001000000047497451305389404296875, dot(f15, f38));
    float f42 = dot(f36, f38);
    float f43 = 1.0 - f42;
    float f44 = f43 * f43;
    float f45 = (f44 * f44) * f43;
    vec3 f46 = vec3(f45) + (f35 * (1.0 - f45));
    float f47 = f40 * f40;
    float f48 = (((f41 * f47) - f41) * f41) + 1.0;
    float f49 = 1.0 - f34;
    float f50 = f28 * f49;
    vec3 f51 = vec3(f49);
    float f52 = f33.x;
    float f53 = f33.y;
    vec3 f54 = ((f35 * f52) + vec3(f53)) / vec3(f52 + f53);
    vec3 f55 = f51 - (f54 * f50);
    vec3 f56 = f15 * f15;
    bvec3 f57 = lessThan(f15, vec3(0.0));
    vec3 f58 = vec3(f57.x ? f56.x : vec3(0.0).x, f57.y ? f56.y : vec3(0.0).y, f57.z ? f56.z : vec3(0.0).z);
    vec3 f59 = f56 - f58;
    float f60 = f59.x;
    float f61 = f59.y;
    float f62 = f59.z;
    float f63 = f58.x;
    float f64 = f58.y;
    float f65 = f58.z;
    vec3 f66 = (mix(textureLod(PrefilteredEnvIndoorTexture, f32, f31).xyz * f23, textureLod(PrefilteredEnvTexture, f32, f31).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f30.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f24)) * f54) * f28;
    vec3 f67 = ((((((((f51 - (f46 * f50)) * CB0[10].xyz) * f39) + (CB0[12].xyz * (f49 * clamp(-f37, 0.0, 1.0)))) + (f55 * (((((((CB0[35].xyz * f60) + (CB0[37].xyz * f61)) + (CB0[39].xyz * f62)) + (CB0[36].xyz * f63)) + (CB0[38].xyz * f64)) + (CB0[40].xyz * f65)) + (((((((CB0[29].xyz * f60) + (CB0[31].xyz * f61)) + (CB0[33].xyz * f62)) + (CB0[30].xyz * f63)) + (CB0[32].xyz * f64)) + (CB0[34].xyz * f65)) * f24)))) + ((CB0[27].xyz + (CB0[28].xyz * f24)) * 1.0)) * f27) + (((f46 * (((f47 + (f47 * f47)) / (((f48 * f48) * ((f42 * 3.0) + 0.5)) * ((f41 * 0.75) + 0.25))) * f39)) * CB0[10].xyz) + f66)) + ((f23 * mix(f27, f66 * (1.0 / (max(max(f66.x, f66.y), f66.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f55) * (f28 * (1.0 - f24)))) * 1.0);
    float f68 = f9.w;
    vec4 f69 = vec4(f67.x, f67.y, f67.z, vec4(0.0).w);
    f69.w = f68;
    float f70 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f71 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f70) * 5.0).xyz;
    bvec3 f72 = bvec3(CB0[13].w != 0.0);
    vec3 f73 = sqrt(clamp(mix(vec3(f72.x ? CB0[14].xyz.x : f71.x, f72.y ? CB0[14].xyz.y : f71.y, f72.z ? CB0[14].xyz.z : f71.z), f69.xyz, vec3(f70)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * f5));
    vec4 f74 = vec4(f73.x, f73.y, f73.z, f69.w);
    f74.w = f68;
    _entryPointOutput = f74;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
