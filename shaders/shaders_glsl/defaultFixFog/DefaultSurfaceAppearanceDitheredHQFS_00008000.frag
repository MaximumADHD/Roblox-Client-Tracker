#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[57];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying vec3 VARYING8;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    if (f0.w < (0.5 * CB0[52].z))
    {
        discard;
    }
    vec3 f1 = f0.xyz * VARYING8;
    float f2 = f1.x;
    vec4 f3 = f0;
    f3.x = f2;
    vec4 f4 = f3;
    f4.y = f1.y;
    vec4 f5 = f4;
    f5.z = f1.z;
    float f6 = f0.w;
    vec4 f7 = mix(vec4(f2, f1.yz, VARYING2.w * f6), vec4(mix(VARYING2.xyz, f5.xyz, vec3(f6)), VARYING2.w), vec4(CB3[0].x));
    vec2 f8 = texture2D(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    vec3 f10 = mix(vec3(0.0, 0.0, 1.0), vec3(f9, sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0))), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f11 = texture2D(SpecularMapTexture, VARYING0);
    float f12 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f13 = VARYING6.xyz * f12;
    vec3 f14 = VARYING5.xyz * f12;
    vec3 f15 = normalize(((f13 * f10.x) + ((cross(f14, f13) * VARYING6.w) * f10.y)) + (f14 * f10.z));
    vec3 f16 = f7.xyz;
    vec3 f17 = f16 * f16;
    vec4 f18 = f7;
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = f17.z;
    float f21 = length(VARYING4.xyz);
    vec3 f22 = VARYING4.xyz / vec3(f21);
    float f23 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f24 = 0.08900000154972076416015625 + (f11.y * 0.9110000133514404296875);
    float f25 = f11.x * f23;
    vec3 f26 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f27 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING3.yzx - (VARYING3.yzx * f27);
    vec4 f29 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f30 = mix(texture3D(LightMapTexture, f28), vec4(0.0), f29);
    vec4 f31 = mix(texture3D(LightGridSkylightTexture, f28), vec4(1.0), f29);
    vec4 f32 = texture2D(ShadowMapTexture, f26.xy);
    float f33 = f26.z;
    vec3 f34 = -CB0[16].xyz;
    float f35 = dot(f15, f34) * ((1.0 - ((step(f32.x, f33) * clamp(CB0[29].z + (CB0[29].w * abs(f33 - 0.5)), 0.0, 1.0)) * f32.y)) * f31.y);
    vec3 f36 = normalize(f22 + f34);
    float f37 = clamp(f35, 0.0, 1.0);
    float f38 = f24 * f24;
    float f39 = max(0.001000000047497451305389404296875, dot(f15, f36));
    float f40 = dot(f34, f36);
    float f41 = 1.0 - f40;
    float f42 = f41 * f41;
    float f43 = (f42 * f42) * f41;
    vec3 f44 = vec3(f43) + (mix(vec3(0.039999999105930328369140625), f20.xyz, vec3(f25)) * (1.0 - f43));
    float f45 = f38 * f38;
    float f46 = (((f39 * f45) - f39) * f39) + 1.0;
    float f47 = 1.0 - f25;
    vec3 f48 = ((((((vec3(f47) - (f44 * (f23 * f47))) * CB0[15].xyz) * f37) + (CB0[17].xyz * (f47 * clamp(-f35, 0.0, 1.0)))) + (min((f30.xyz * (f30.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f31.x)), vec3(CB0[21].w)) * 1.0)) * f20.xyz) + (((f44 * (((f45 + (f45 * f45)) / (((f46 * f46) * ((f40 * 3.0) + 0.5)) * ((f39 * 0.75) + 0.25))) * f37)) * CB0[15].xyz) * 1.0);
    vec4 f49 = vec4(0.0);
    f49.x = f48.x;
    vec4 f50 = f49;
    f50.y = f48.y;
    vec4 f51 = f50;
    f51.z = f48.z;
    float f52 = f7.w;
    vec4 f53 = f51;
    f53.w = f52;
    vec3 f54 = -f22;
    vec3 f55 = f54 * f54;
    bvec3 f56 = lessThan(f54, vec3(0.0));
    vec3 f57 = vec3(f56.x ? f55.x : vec3(0.0).x, f56.y ? f55.y : vec3(0.0).y, f56.z ? f55.z : vec3(0.0).z);
    vec3 f58 = f55 - f57;
    vec3 f59 = (((((CB0[34].xyz * f58.x) + (CB0[36].xyz * f58.y)) + (CB0[38].xyz * f58.z)) + (CB0[35].xyz * f57.x)) + (CB0[37].xyz * f57.y)) + (CB0[39].xyz * f57.z);
    bvec3 f60 = bvec3(!(CB0[18].w == 0.0));
    vec3 f61 = mix(vec3(f60.x ? CB0[19].xyz.x : f59.x, f60.y ? CB0[19].xyz.y : f59.y, f60.z ? CB0[19].xyz.z : f59.z), f53.xyz, vec3(clamp(exp2((CB0[18].z * f21) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f62 = f53;
    f62.x = f61.x;
    vec4 f63 = f62;
    f63.y = f61.y;
    vec4 f64 = f63;
    f64.z = f61.z;
    vec3 f65 = sqrt(clamp(f64.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f66 = f64;
    f66.x = f65.x;
    vec4 f67 = f66;
    f67.y = f65.y;
    vec4 f68 = f67;
    f68.z = f65.z;
    vec4 f69 = f68;
    f69.w = f52;
    gl_FragData[0] = f69;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
