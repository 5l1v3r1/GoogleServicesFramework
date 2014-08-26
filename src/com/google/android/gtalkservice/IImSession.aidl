package com.google.android.gtalkservice;

import com.google.android.gtalkservice.IConnectionStateListener;
import com.google.android.gtalkservice.IGroupChatInvitationListener;
import com.google.android.gtalkservice.IChatListener;
import com.google.android.gtalkservice.IJingleInfoStanzaListener;
import com.google.android.gtalkservice.IRosterListener;
import com.google.android.gtalkservice.ISessionStanzaListener;
import com.google.android.gtalkservice.IChatSession;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.gtalkservice.Presence;
import android.graphics.Bitmap;


interface IImSession {
	long getAccountId();
	String getUsername();
	String getJid();
	void login(String s, boolean flag);
	void logout();
	ConnectionState getConnectionState();
	void addConnectionStateListener(IConnectionStateListener iconnectionstatelistener);
	void removeConnectionStateListener(IConnectionStateListener iconnectionstatelistener);
	void setPresence(in Presence presence);
	Presence getPresence();
	void uploadAvatar(in Bitmap bitmap);
	void uploadAvatarFromDb();
	void addContact(String s, String s1, in String[] as);
	void editContact(String s, String s1, in String[] as);
	void removeContact(String s);
	void blockContact(String s);
	void pinContact(String s);
	void hideContact(String s);
	void clearContactFlags(String s);
	void approveSubscriptionRequest(String s, String s1, in String[] as);
	void declineSubscriptionRequest(String s);
	IChatSession createChatSession(String s);
	IChatSession getChatSession(String s);
	void createGroupChatSession(String s, in String[] as);
	void joinGroupChatSession(String s, String s1, String s2);
	void declineGroupChatInvitation(String s, String s1);
	void addGroupChatInvitationListener(IGroupChatInvitationListener igroupchatinvitationlistener);
	void removeGroupChatInvitationListener(IGroupChatInvitationListener igroupchatinvitationlistener);
	void addRemoteChatListener(IChatListener ichatlistener);
	void removeRemoteChatListener(IChatListener ichatlistener);
	void addRemoteRosterListener(IRosterListener irosterlistener);
	void removeRemoteRosterListener(IRosterListener irosterlistener);
	void goOffRecordWithContacts(in List list, boolean flag);
	void goOffRecordInRoom(String s, boolean flag);
	boolean isOffRecordWithContact(String contact);
	void closeAllChatSessions();
	void pruneOldChatSessions(long l, long l1, long l2, boolean flag);
	void sendSessionStanza(String s);
	void addRemoteSessionStanzaListener(ISessionStanzaListener isessionstanzalistener);
	void removeRemoteSessionStanzaListener(ISessionStanzaListener isessionstanzalistener);
	void queryJingleInfo();
	void addRemoteJingleInfoStanzaListener(IJingleInfoStanzaListener ijingleinfostanzalistener);
	void removeRemoteJingleInfoStanzaListener(IJingleInfoStanzaListener ijingleinfostanzalistener);
	void requestBatchedBuddyPresence();
	void sendCallPerfStatsStanza(String s);
	void inviteContactsToGroupchat(String groupChat, in String[] contacts);
}