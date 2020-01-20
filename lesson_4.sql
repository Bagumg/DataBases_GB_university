-- �������� ������, ������������ ������ ���� (������ firstname) ������������� ��� ���������� � ���������� �������

select firstname from users
	order by firstname;

-- �������� ������, ���������� ������������������ ������������� ��� ���������� (���� is_active = true).

update profiles
	set is_active = true
where (year(current_date) - year(birthday)) > 18;

-- �������� ������, ��������� ��������� ��� �������� (���� ����� �����������)

delete from messages
where year(current_date) < year(created_at);



-- �������� ��������� ������� ����� �������: "���� ������ �������" ��� "ParserDB"
-- ������ ������������ ��� ����������� ��� �� ������ �����������

/*
1. ������� � ����������� ������� (������ ���������, ������������ ������ �������).
2. ������� � �������� ������ ��� �������� (�������� �����, url ������� ��� ������ � ����������)
	- ������� ������ �� ������� � ����������� �������, �.�. ��� ��������� ������ � ������� �������������� ���������.
3. ������� � ����������� (������������ ���������, url, �������)
	- ������� ������ �� ������� � �������� ������ ��� ��������. Url ����������� �� url ����� + /���������.
4. ~ 20 ������ �� ������ �� ��������� � ��� �������� ��� ������ �� ���� ������, ����������� � ������������ ��� ��������
	- ������ ����� ����� ������� ������ �� ������� � ������� � �� ������� � �����������
	- ������� ����� (url �� �����, �������, ������������, ��������, ����)
	- �� �������������.
	

����� ���� �������� ���� ��������� � ������������� ������, ��� �������, "������" ���� ������. 
������������� �� ������� �� �����������, ���� �������� ������ �� ����� ��������������.
/*