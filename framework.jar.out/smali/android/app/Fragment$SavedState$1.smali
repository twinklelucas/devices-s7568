.class final Landroid/app/Fragment$SavedState$1;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Fragment$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Landroid/app/Fragment$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 504
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/Fragment$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 506
    new-instance v0, Landroid/app/Fragment$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/app/Fragment$SavedState;
    .locals 1
    .parameter "in"
    .parameter "loader"

    .prologue
    .line 510
    new-instance v0, Landroid/app/Fragment$SavedState;

    invoke-direct {v0, p1, p2}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Landroid/app/Fragment$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 504
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/Fragment$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 514
    new-array v0, p1, [Landroid/app/Fragment$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Landroid/app/Fragment$SavedState$1;->newArray(I)[Landroid/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method
