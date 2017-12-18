package com.co.kr.free.vo;

public class FreeVo {
    private int freeBorIdx;
    private String freeBorTitle;
    private String userNm;
    private String userId;
    private String freeBorContents;
    private int freeBorViewCnt; 
    private String regDe;
    private String updateId;
    private String updateDe;
    private String delDe;
    private String delId;
    private String useYn;
	public int getFreeBorIdx() {
		return freeBorIdx;
	}
	public void setFreeBorIdx(int freeBorIdx) {
		this.freeBorIdx = freeBorIdx;
	}
	public String getFreeBorTitle() {
		return freeBorTitle;
	}
	public void setFreeBorTitle(String freeBorTitle) {
		this.freeBorTitle = freeBorTitle;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getFreeBorContents() {
		return freeBorContents;
	}
	public void setFreeBorContents(String freeBorContents) {
		this.freeBorContents = freeBorContents;
	}
	public int getFreeBorViewCnt() {
		return freeBorViewCnt;
	}
	public void setFreeBorViewCnt(int freeBorViewCnt) {
		this.freeBorViewCnt = freeBorViewCnt;
	}
	public String getRegDe() {
		return regDe;
	}
	public void setRegDe(String regDe) {
		this.regDe = regDe;
	}
	public String getUpdateId() {
		return updateId;
	}
	public void setUpdateId(String updateId) {
		this.updateId = updateId;
	}
	public String getUpdateDe() {
		return updateDe;
	}
	public void setUpdateDe(String updateDe) {
		this.updateDe = updateDe;
	}
	public String getDelDe() {
		return delDe;
	}
	public void setDelDe(String delDe) {
		this.delDe = delDe;
	}
	public String getDelId() {
		return delId;
	}
	public void setDelId(String delId) {
		this.delId = delId;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	@Override
	public String toString() {
		return "freeVo [freeBorIdx=" + freeBorIdx + ", freeBorTitle=" + freeBorTitle + ", userNm=" + userNm
				+ ", userId=" + userId + ", freeBorContents=" + freeBorContents + ", freeBorViewCnt=" + freeBorViewCnt
				+ ", regDe=" + regDe + ", updateId=" + updateId + ", updateDe=" + updateDe + ", delDe=" + delDe
				+ ", delId=" + delId + ", useYn=" + useYn + "]";
	} 
    
    
}
