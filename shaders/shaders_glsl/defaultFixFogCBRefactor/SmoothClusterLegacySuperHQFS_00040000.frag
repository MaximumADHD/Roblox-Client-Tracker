#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SCExtraData.h>
#include <SCLayerData.h>
uniform vec4 CB0[57];
uniform vec4 CB3[1];
uniform vec4 CB5[189];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec3 VARYING7;
varying vec3 VARYING8;
varying vec3 VARYING9;

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xy.xyxy) + VARYING2;
    vec2 f1 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 f2 = VARYING1 * CB3[0].xy.xyxy;
    vec2 f3 = VARYING3.xy * CB3[0].xy;
    vec2 f4 = f0.xy;
    vec2 f5 = f2.xy;
    vec2 f6 = f0.zw;
    vec2 f7 = f2.zw;
    vec4 f8 = ((texture2DGradARB(SpecularMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z);
    vec4 f9 = texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5));
    vec4 f10 = texture2DGradARB(AlbedoMapTexture, f6, dFdx(f7), dFdy(f7));
    vec4 f11 = texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3));
    vec3 f12 = (((mix(vec3(1.0), CB5[int(VARYING9.x + 0.5) * 3 + 2].xyz, vec3(f9.w)) * f9.xyz) * VARYING0.x) + ((mix(vec3(1.0), CB5[int(VARYING9.y + 0.5) * 3 + 2].xyz, vec3(f10.w)) * f10.xyz) * VARYING0.y)) + ((mix(vec3(1.0), CB5[int(VARYING9.z + 0.5) * 3 + 2].xyz, vec3(f11.w)) * f11.xyz) * VARYING0.z);
    vec3 f13 = f12 * f12;
    float f14 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec2 f15 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z)).wy * 2.0;
    vec2 f16 = f15 - vec2(1.0);
    vec3 f17 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f18 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f17) * f16.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f17) * f16.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f15, f16), 0.0, 1.0)))), 0.0).xyz;
    float f19 = 0.08900000154972076416015625 + (f8.y * 0.9110000133514404296875);
    float f20 = f8.x;
    vec3 f21 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f22 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING4.yzx - (VARYING4.yzx * f22);
    vec4 f24 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f25 = mix(texture3D(LightMapTexture, f23), vec4(0.0), f24);
    vec4 f26 = mix(texture3D(LightGridSkylightTexture, f23), vec4(1.0), f24);
    vec4 f27 = texture2D(ShadowMapTexture, f21.xy);
    float f28 = f21.z;
    vec3 f29 = -CB0[16].xyz;
    float f30 = dot(f18, f29) * ((1.0 - ((step(f27.x, f28) * clamp(CB0[29].z + (CB0[29].w * abs(f28 - 0.5)), 0.0, 1.0)) * f27.y)) * f26.y);
    vec3 f31 = normalize(normalize(VARYING8) + f29);
    float f32 = clamp(f30, 0.0, 1.0);
    float f33 = f19 * f19;
    float f34 = max(0.001000000047497451305389404296875, dot(f18, f31));
    float f35 = dot(f29, f31);
    float f36 = 1.0 - f35;
    float f37 = f36 * f36;
    float f38 = (f37 * f37) * f36;
    vec3 f39 = vec3(f38) + (mix(vec3(0.039999999105930328369140625), f13, vec3(f20)) * (1.0 - f38));
    float f40 = f33 * f33;
    float f41 = (((f34 * f40) - f34) * f34) + 1.0;
    float f42 = 1.0 - f20;
    vec3 f43 = (((((((vec3(f42) - (f39 * ((CB0[31].w * f14) * f42))) * CB0[15].xyz) * f32) + (CB0[17].xyz * (f42 * clamp(-f30, 0.0, 1.0)))) + (min((f25.xyz * (f25.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f26.x)), vec3(CB0[21].w)) * 1.0)) + vec3((f8.z * 2.0) * f14)) * f13) + ((((f39 * (((f40 + (f40 * f40)) / (((f41 * f41) * ((f35 * 3.0) + 0.5)) * ((f34 * 0.75) + 0.25))) * f32)) * CB0[15].xyz) * 1.0) * (f14 * VARYING0.w));
    vec4 f44 = vec4(0.0);
    f44.x = f43.x;
    vec4 f45 = f44;
    f45.y = f43.y;
    vec4 f46 = f45;
    f46.z = f43.z;
    vec4 f47 = f46;
    f47.w = 1.0;
    vec3 f48 = normalize(-VARYING8);
    vec3 f49 = f48 * f48;
    bvec3 f50 = lessThan(f48, vec3(0.0));
    vec3 f51 = vec3(f50.x ? f49.x : vec3(0.0).x, f50.y ? f49.y : vec3(0.0).y, f50.z ? f49.z : vec3(0.0).z);
    vec3 f52 = f49 - f51;
    vec3 f53 = (((((CB0[34].xyz * f52.x) + (CB0[36].xyz * f52.y)) + (CB0[38].xyz * f52.z)) + (CB0[35].xyz * f51.x)) + (CB0[37].xyz * f51.y)) + (CB0[39].xyz * f51.z);
    bvec3 f54 = bvec3(!(CB0[18].w == 0.0));
    vec3 f55 = mix(vec3(f54.x ? CB0[19].xyz.x : f53.x, f54.y ? CB0[19].xyz.y : f53.y, f54.z ? CB0[19].xyz.z : f53.z), f47.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f56 = f47;
    f56.x = f55.x;
    vec4 f57 = f56;
    f57.y = f55.y;
    vec4 f58 = f57;
    f58.z = f55.z;
    vec3 f59 = sqrt(clamp(f58.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f60 = f58;
    f60.x = f59.x;
    vec4 f61 = f60;
    f61.y = f59.y;
    vec4 f62 = f61;
    f62.z = f59.z;
    gl_FragData[0] = f62;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
