package mvcmybatis.common.dao;

/***
 * ͨ���˽ӿ�ʵ�ֶ����๲�Ե���ȡ
 * @author adminitartor
 * @param <T>
 * ͨ�����ϵķ���<T>Լ������:
 * 1)�����Ĳ�������
 * 2)�����ķ���ֵ����
 */
public interface BaseDao<T> {
	int insertObject(T entity);
	int updateObject(T entity);
}