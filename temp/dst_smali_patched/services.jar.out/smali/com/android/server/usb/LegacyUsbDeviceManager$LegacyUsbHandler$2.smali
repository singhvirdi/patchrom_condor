.class Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler$2;
.super Landroid/database/ContentObserver;
.source "LegacyUsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;-><init>(Lcom/android/server/usb/LegacyUsbDeviceManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

.field final synthetic val$this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;Landroid/os/Handler;Lcom/android/server/usb/LegacyUsbDeviceManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler$2;->this$1:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    iput-object p3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler$2;->val$this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler$2;->this$1:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    # invokes: Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateAdbNotification()V
    invoke-static {v0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->access$800(Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;)V

    return-void
.end method
