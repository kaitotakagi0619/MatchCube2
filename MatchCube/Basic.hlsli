cbuffer cbuff0 : register(b0)
{
	float4 color; //�F(RGBA)
	matrix mat; // 3D�ϊ��s��
};

//

struct VSoutput
{
	float4 svpos : SV_POSITION;//�V�X�e���p���_���W
	float3 normal :NORMAL;//�@���x�N�g��
	float2 uv : TEXCOORD;//UV���W
};
