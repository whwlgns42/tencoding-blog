package com.tencoding.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tencoding.blog.dto.Reply;

public interface ReplyRepostiory extends JpaRepository<Reply, Integer>{

	
}
