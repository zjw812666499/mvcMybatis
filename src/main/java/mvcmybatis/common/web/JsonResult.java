package mvcmybatis.common.web;
/**�����˶����װController��������
 * @ResponseBodyע��ķ����ķ���ֵ,
 * Ŀ��:ͳһ����ֵ����,������ҳ���Ͻ�
 * ��ͳһ����
 * */
public class JsonResult {
	private static final int SUCCESS=1;
	private static final int ERROR=0;
	/**״̬*/
	private int state;
	/**��Ӧ״̬����Ϣ*/
	private String message;
	/**����ҵ������*/
	private Object data;
	/**�˹��췽��Ӧ����dataΪnull�ĳ���*/
	public JsonResult(){
		this.state=SUCCESS;//1
		this.message="OK";
	}
	/**�о���ҵ�����ݷ���ʱ,ʹ�ô˹��췽��*/
	public JsonResult(Object data){
		this();
		this.data=data;
	}
	/**�����쳣�Ժ�Ҫ���ô˷�����װ�쳣��Ϣ*/
	public JsonResult(Throwable t){
		this.state=ERROR;
		this.message=t.getMessage();
	}
	public Object getData() {
		return data;
	}
	public int getState() {
		return state;
	}
	public String getMessage() {
		return message;
	}
	public void setState(int state) {
		this.state = state;
	}
	
}
