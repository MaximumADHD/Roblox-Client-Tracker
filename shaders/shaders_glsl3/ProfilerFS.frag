#version 150

uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec4 _97 = vec4(0.0, 0.0, 0.0, texture(DiffuseMapTexture, VARYING0 + vec2(0.0, 0.0625)).x);
    bvec4 _100 = bvec4(texture(DiffuseMapTexture, VARYING0).x < 0.5);
    _entryPointOutput = vec4(_100.x ? _97.x : VARYING1.x, _100.y ? _97.y : VARYING1.y, _100.z ? _97.z : VARYING1.z, _100.w ? _97.w : VARYING1.w);
}

//$$DiffuseMapTexture=s0
