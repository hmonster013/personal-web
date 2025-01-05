create table skills (
	id bigserial primary key,
	icon varchar(255),
	name varchar(255)
);

create table projects (
	id bigserial primary key,
	name varchar(255),
	img varchar(255),
	description text,
	link_github varchar(255),
	link_website varchar(255),
	start_date date,
	end_date date
);

create table projects_skills (
	id bigserial primary key,
	skill_id bigint,
	project_id bigint,
	
	foreign key (skill_id) references skills(id),
	foreign key (project_id) references projects(id)
);

create table experiences (
	id bigserial primary key,
	company_img varchar(255),
	company_name varchar(255),
	job_title varchar(255),
	description text,
	working_period varchar(255),
	start_date timestamp,
	end_date timestamp
);

create table links(
	id bigserial primary key,
	name varchar(255),
	title varchar(255),
	url varchar(255),
	icon varchar(255)
);