#version 150

uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = vec4(0.0, 0.0, 0.0, texture(DiffuseMapTexture, VARYING0 + vec2(0.0, 0.0625)).x);
    bvec4 f1 = bvec4(texture(DiffuseMapTexture, VARYING0).x < 0.5);
    _entryPointOutput = vec4(f1.x ? f0.x : VARYING1.x, f1.y ? f0.y : VARYING1.y, f1.z ? f0.z : VARYING1.z, f1.w ? f0.w : VARYING1.w);
}

//$$DiffuseMapTexture=s0
