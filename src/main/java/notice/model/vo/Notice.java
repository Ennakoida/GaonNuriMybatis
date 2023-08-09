package notice.model.vo;

import java.sql.Date;

public class Notice {
	
	private int noticeNo;
	private String noticeSubject;
	private String noticeContent;
	private Date noticeDate;
	private Date updateDate;
	private int viewCount;
	
	public Notice() {}
	
	public Notice(String noticeSubject, String noticeContent) {
		super();
		this.noticeSubject = noticeSubject;
		this.noticeContent = noticeContent;
	}
	
	public Notice(int noticeNo, String noticeSubject, String noticeContent) {
		super();
		this.noticeNo = noticeNo;
		this.noticeSubject = noticeSubject;
		this.noticeContent = noticeContent;
	}

	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeSubject() {
		return noticeSubject;
	}
	public void setNoticeSubject(String noticeSubject) {
		this.noticeSubject = noticeSubject;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	
	@Override
	public String toString() {
		return "공지 [번호=" + noticeNo + ", 제목=" + noticeSubject + ", 내용=" + noticeContent
				+ ", 작성일=" + noticeDate + ", 수정일=" + updateDate + ", 조회수=" + viewCount + "]";
	}
	
}
