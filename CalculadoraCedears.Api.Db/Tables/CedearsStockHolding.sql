﻿CREATE TABLE [dbo].[CedearsStockHolding]
(
    [Id]                    UNIQUEIDENTIFIER, 
    [Quantity]              INT                 NOT NULL,  
    [EffectiveRatio]        DECIMAL(4,2)        NOT NULL, 
    [TodayChange]           DECIMAL(10, 2)      NOT NULL,
    [TodayChangePercent]    DECIMAL(5, 2)       NOT NULL,
    [SinceChange]           DECIMAL(10, 2)      NOT NULL,
    [SinceChangePercent]    DECIMAL(5, 2)       NOT NULL,
    [SinceDate]             DATETIME            NOT NULL,
    [UntilDate]             DATETIME            NULL,
    [ExchangeRateCCL]       DECIMAL(10, 2)      NOT NULL,
    [PurchasePriceArs]      DECIMAL(10, 2)      NOT NULL,
    [CurrentPriceUsd]       DECIMAL(10, 2)      NOT NULL,
    [CurrentValueUsd]       DECIMAL(10, 2)      NOT NULL,    
    [PurchasePriceUsd]      DECIMAL(10, 2)      NOT NULL,
    [PurchaseValueUsd]      DECIMAL(10, 2)      NOT NULL,
    [BrokerId]              INT                 NOT NULL,
    [CedearId]              UNIQUEIDENTIFIER    NOT NULL,
    CONSTRAINT [PK_CedearsStockHolding] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CedearsStockHolding_Brokers] FOREIGN KEY ([BrokerId]) REFERENCES [dbo].[Brokers] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_CedearsStockHolding_Cedears] FOREIGN KEY ([CedearId]) REFERENCES [dbo].[Cedears] ([Id]) ON DELETE CASCADE
)
