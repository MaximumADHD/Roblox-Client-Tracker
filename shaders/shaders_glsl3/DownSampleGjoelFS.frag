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
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    vec3 _346 = texture(Texture0Texture, VARYING0).xyz;
    vec3 _353 = texture(Texture0Texture, VARYING1.xy).xyz;
    vec3 _360 = texture(Texture0Texture, VARYING1.zw).xyz;
    vec3 _367 = texture(Texture0Texture, VARYING2.xy).xyz;
    vec3 _374 = texture(Texture0Texture, VARYING2.zw).xyz;
    vec3 _381 = texture(Texture0Texture, VARYING3.xy).xyz;
    vec3 _388 = texture(Texture0Texture, VARYING3.zw).xyz;
    vec3 _395 = texture(Texture0Texture, VARYING4.xy).xyz;
    vec3 _402 = texture(Texture0Texture, VARYING4.zw).xyz;
    vec3 _422 = ((((((((((_346 * _346) * 4.0) + ((_353 * _353) * 4.0)) + ((_360 * _360) * 4.0)) + ((_367 * _367) * 4.0)) + ((_374 * _374) * 4.0)) + ((_381 * _381) * 4.0)) + ((_388 * _388) * 4.0)) + ((_395 * _395) * 4.0)) + ((_402 * _402) * 4.0)) * 0.111111111938953399658203125;
    float _502 = max(max(_422.x, _422.y), _422.z);
    _entryPointOutput = vec4(sqrt(clamp((_422 * ((vec3(max(_502 - CB1[7].y, 0.0)) / vec3(_502 + 0.001000000047497451305389404296875)) * CB1[7].x)) * 0.25, vec3(0.0), vec3(1.0))), 1.0);
}

//$$Texture0Texture=s0
