#include <Carbon/Carbon.h>

#define APP_NAME "heisstaste"

OSStatus handler(EventHandlerCallRef nextHandler, EventRef theEvent, void* userData)
{
  printf("Global keyboard shortcut pressed!\n");

  return noErr;
}

int main()
{
  EventTypeSpec eventType;
  eventType.eventClass = kEventClassKeyboard;
  eventType.eventKind  = kEventHotKeyPressed;

  InstallApplicationEventHandler(&handler, 1, &eventType, NULL, NULL);

  EventHotKeyID g_HotKeyID;
  g_HotKeyID.id = 1;

  EventHotKeyRef g_HotKeyRef;

  RegisterEventHotKey(124, controlKey + cmdKey, g_HotKeyID, GetApplicationEventTarget(), 0, &g_HotKeyRef);

  printf("%s started. Press the global keyboard shortcut!\n", APP_NAME);

  RunApplicationEventLoop();

	return 0;
}
