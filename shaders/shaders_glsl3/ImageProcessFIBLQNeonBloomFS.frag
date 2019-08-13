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
uniform sampler2D Texture3Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 _316 = texture(Texture0Texture, VARYING0);
    vec3 _317 = _316.xyz;
    vec3 _355 = texture(Texture3Texture, VARYING0).xyz + ((_317 * ((vec3(max(max(max(_316.x, _316.y), _316.z) - CB1[7].y, 0.0)) * CB1[7].x) * 3.2999999523162841796875)) * 2.0);
    vec3 _361 = ((_317 * _317) * 4.0) + ((_355 * _355) * 4.0);
    vec3 _434 = _361 * CB1[5].x;
    vec3 _452 = ((_361 * (_434 + vec3(CB1[5].y))) / ((_361 * (_434 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    _entryPointOutput = vec4(dot(_452, CB1[1].xyz) + CB1[1].w, dot(_452, CB1[2].xyz) + CB1[2].w, dot(_452, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
//$$Texture3Texture=s3
