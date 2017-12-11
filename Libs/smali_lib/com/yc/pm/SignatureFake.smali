.class public Lcom/yc/pm/SignatureFake;
.super Ljava/lang/Object;
.source "SignatureFake.java"


# static fields
.field private static sSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/yc/pm/SignatureFake;->sSignature:[Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSigBytes()[B
    .locals 7

    .prologue
    .line 18
    invoke-static {}, Lcom/yc/pm/SignatureFake;->getSigStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 19
    .local v4, "tirmStr":Ljava/lang/String;
    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 20
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 22
    :cond_0
    invoke-static {}, Lcom/yc/pm/SignatureFake;->getSigStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "strs":[Ljava/lang/String;
    array-length v2, v3

    .line 24
    .local v2, "len":I
    new-array v0, v2, [B

    .line 25
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 26
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v0, v1

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_1
    return-object v0
.end method

.method private static getSigStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "48,-126,2,-21,48,-126,2,84,-96,3,2,1,2,2,4,77,54,-9,-92,48,13,6,9,42,-122,72,-122,-9,13,1,1,5,5,0,48,-127,-71,49,11,48,9,6,3,85,4,6,19,2,56,54,49,18,48,16,6,3,85,4,8,19,9,71,117,97,110,103,100,111,110,103,49,17,48,15,6,3,85,4,7,19,8,83,104,101,110,122,104,101,110,49,53,48,51,6,3,85,4,10,19,44,84,101,110,99,101,110,116,32,84,101,99,104,110,111,108,111,103,121,40,83,104,101,110,122,104,101,110,41,32,67,111,109,112,97,110,121,32,76,105,109,105,116,101,100,49,58,48,56,6,3,85,4,11,19,49,84,101,110,99,101,110,116,32,71,117,97,110,103,122,104,111,117,32,82,101,115,101,97,114,99,104,32,97,110,100,32,68,101,118,101,108,111,112,109,101,110,116,32,67,101,110,116,101,114,49,16,48,14,6,3,85,4,3,19,7,84,101,110,99,101,110,116,48,30,23,13,49,49,48,49,49,57,49,52,51,57,51,50,90,23,13,52,49,48,49,49,49,49,52,51,57,51,50,90,48,-127,-71,49,11,48,9,6,3,85,4,6,19,2,56,54,49,18,48,16,6,3,85,4,8,19,9,71,117,97,110,103,100,111,110,103,49,17,48,15,6,3,85,4,7,19,8,83,104,101,110,122,104,101,110,49,53,48,51,6,3,85,4,10,19,44,84,101,110,99,101,110,116,32,84,101,99,104,110,111,108,111,103,121,40,83,104,101,110,122,104,101,110,41,32,67,111,109,112,97,110,121,32,76,105,109,105,116,101,100,49,58,48,56,6,3,85,4,11,19,49,84,101,110,99,101,110,116,32,71,117,97,110,103,122,104,111,117,32,82,101,115,101,97,114,99,104,32,97,110,100,32,68,101,118,101,108,111,112,109,101,110,116,32,67,101,110,116,101,114,49,16,48,14,6,3,85,4,3,19,7,84,101,110,99,101,110,116,48,-127,-97,48,13,6,9,42,-122,72,-122,-9,13,1,1,1,5,0,3,-127,-115,0,48,-127,-119,2,-127,-127,0,-64,95,52,-78,49,-80,-125,-5,19,35,103,11,-5,-25,-67,-85,64,-64,-64,-90,-17,-56,126,-14,7,42,31,-16,-42,12,-58,124,-114,-37,13,8,71,-14,16,-66,-90,-53,-6,-94,65,-66,112,-56,109,-81,86,-66,8,-73,35,-56,89,-27,36,40,-96,100,85,93,-128,-37,68,-116,-36,-84,-63,-82,-94,80,30,-70,6,-8,-70,-47,42,79,-92,-99,-123,-54,-51,122,-66,-74,-119,69,-91,-53,94,6,22,41,-75,46,50,84,-61,115,85,14,-28,-28,12,-73,-56,-82,111,122,-127,81,-52,-40,-33,88,45,68,111,57,-82,12,94,-109,2,3,1,0,1,48,13,6,9,42,-122,72,-122,-9,13,1,1,5,5,0,3,-127,-127,0,-100,-115,-99,127,47,-112,-116,66,8,27,76,118,76,55,113,9,-88,-78,-57,5,-126,66,33,37,-50,84,88,66,-43,-11,32,-82,-90,-107,80,-74,-67,-117,-3,-108,-23,-121,-73,90,48,119,-21,4,-83,52,31,72,26,-84,38,110,-119,-45,-122,68,86,-26,-97,-70,19,-33,1,-118,-51,-63,104,-71,-95,-99,-3,122,-39,-39,-52,111,106,-50,87,-57,70,81,95,113,35,77,-13,-96,83,-29,59,-87,62,-50,92,-48,-4,21,-13,-29,-119,-93,-13,101,88,-118,-97,-53,67,-98,6,-99,54,41,-51,119,50,-95,63,-1,123,-119,20,-103"

    return-object v0
.end method

.method public static getSignature()[Landroid/content/pm/Signature;
    .locals 4

    .prologue
    .line 32
    sget-object v0, Lcom/yc/pm/SignatureFake;->sSignature:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/yc/pm/SignatureFake;->sSignature:[Landroid/content/pm/Signature;

    .line 37
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/pm/Signature;

    sput-object v0, Lcom/yc/pm/SignatureFake;->sSignature:[Landroid/content/pm/Signature;

    .line 36
    sget-object v0, Lcom/yc/pm/SignatureFake;->sSignature:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/pm/Signature;

    invoke-static {}, Lcom/yc/pm/SignatureFake;->getSigBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v2, v0, v1

    .line 37
    sget-object v0, Lcom/yc/pm/SignatureFake;->sSignature:[Landroid/content/pm/Signature;

    goto :goto_0
.end method
