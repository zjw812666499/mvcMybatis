package mvcmybatis.common.web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

/**springmvc �ڽ����ڶ���ת��Ϊ�ַ���ʱ,
 * һ��Ĭ�ϻ�ת��Ϊ������,����������Ҫ�Լ�
 * �����ʽ,ͨ����дһ����̳�JsonSerializer,\
 * �����ڶ�������Ҫ������ת��Ϊ������Ҫ�ĸ�ʽ
 * �����ڶ�Ӧ��ʵ������get������ʹ��
 * @JsonSerializer(using=
 * JsonDateTypeConvert.class)
 * */
public class JsonDateTypeConvert 
extends JsonSerializer<Date>{
/**
* @param value ��Ҫת��������
* @param gen Ϊһ��json����������
* */
@Override
public void serialize(Date value,
		JsonGenerator gen, 
		SerializerProvider serializers)
		throws IOException, 
		JsonProcessingException {
	//���������ַ���ת������
	SimpleDateFormat sdf=
	new SimpleDateFormat("yyyy/MM/dd");
	//������ת��Ϊָ����ʽ�ַ���
	String dateStr=sdf.format(value);
	//�����ַ���д�뵽json������
	gen.writeString(dateStr);
}//alt+/
}//
	
