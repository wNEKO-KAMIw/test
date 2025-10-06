package com.example.webapp.repository;

import org.apache.ibatis.annotations.Mapper;

import com.example.webapp.entity.Authentication;

@Mapper
public interface AuthenticationMapper {
	
	//「ユーザー名」でログイン情報を取得します
		Authentication selectByUsername(String username);

}
