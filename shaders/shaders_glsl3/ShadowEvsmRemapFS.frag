#version 150

struct Params
{
    vec4 TextureSize;
    vec4 Params1;
    vec4 Params2;
    vec4 Params3;
    vec4 Params4;
    vec4 Params5;
    vec4 Params6;
    vec4 Bloom;
};

uniform vec4 CB1[8];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 _140 = texture(Texture0Texture, VARYING0) * CB1[2];
    vec2 _149 = clamp(_140.xy, CB1[3].xy, CB1[3].zw);
    vec4 _182 = vec4(_149.x, _149.y, _140.z, _140.w);
    _182.z = clamp(_140.z, -CB1[3].z, -CB1[3].x);
    vec4 _185 = _182;
    _185.w = clamp(_140.w, CB1[3].y, CB1[3].w);
    _entryPointOutput = _185;
}

//$$Texture0Texture=s0
