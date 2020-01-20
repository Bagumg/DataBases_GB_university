/*
 * ����� ����� ��������� ������������. 
 * �� ���� ������ ����� ������������ ������� ��������, ������� ������ ���� ������� � ����� �������������.
*/
   
select sum(from_user_id) as num_of_msg, id from messages
  where to_user_id = 1
  and from_user_id in (select id from friend_requests WHERE (initiator_user_id = 1 or target_user_id = 1) and status = 'approved')
  order by num_of_msg;
 
 /*
  * ���������� ����� ���������� ������, ������� �������� ������������ ������ 10 ���.
  */
 
select media_id, count(*), user_id from likes
 where user_id in 
	(
  	select user_id from profiles where (TIMESTAMPDIFF(YEAR, birthday, NOW()) < 10)
  	)
 group by media_id
;

/*
 * ���������� ��� ������ �������� ������ (�����) - ������� ��� �������?
 */

select count(gender), gender from profiles
where user_id in (select user_id from profiles where gender like '%')
group by gender
limit 1
;
