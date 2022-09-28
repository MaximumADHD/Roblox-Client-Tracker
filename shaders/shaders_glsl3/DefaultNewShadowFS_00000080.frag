#version 150

uniform sampler2D DiffuseMapTexture;

in vec3 VARYING0;

void main()
{
    if ((texture(DiffuseMapTexture, VARYING0.xy).w * VARYING0.z) < 0.2520000040531158447265625)
    {
        discard;
    }
}

//$$DiffuseMapTexture=s3
