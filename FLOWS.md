# CrewAI Applications: Agent Flow Diagrams

This document visualizes the agent workflows for the CrewAI applications using Mermaid diagrams.

## Stock Analysis Flow

```mermaid
flowchart TD
    A[User Input: Company Name] --> B[Financial Crew]
    
    subgraph Agents
        C[Research Analyst]
        D[Financial Analyst]
        E[Investment Advisor]
    end
    
    subgraph Tasks
        F[Research Task]
        G[Financial Analysis Task]
        H[Filings Analysis Task]
        I[Recommend Task]
    end
    
    B --> C
    B --> D
    B --> E
    
    C --> F
    D --> G
    D --> H
    E --> I
    
    F -- "Company Research\nMarket Sentiment\nStock Ticker" --> G
    G -- "Financial Metrics\nIndustry Comparison" --> H
    H -- "SEC Filings Analysis\nRed Flags/Indicators" --> I
    
    I --> J[Investment Recommendation Report]
    J --> K[Present to User]
```

## Trip Planner Flow

```mermaid
flowchart TD
    A[User Input: Origin, Cities, Date Range, Interests] --> B[Trip Crew]
    
    subgraph Agents
        C[City Selection Expert]
        D[Local Expert]
        E[Travel Concierge]
    end
    
    subgraph Tasks
        F[Identify Task]
        G[Gather Task]
        H[Plan Task]
    end
    
    B --> C
    B --> D
    B --> E
    
    C --> F
    D --> G
    E --> H
    
    F -- "Selected City\nFlight Costs\nWeather Forecast\nAttractions" --> G
    G -- "Local Insights\nHidden Gems\nCultural Hotspots\nPractical Tips" --> H
    
    H --> I[Complete Travel Plan]
    I --> J[Present to User]
```

## Agent-Task Relationships

### Stock Analysis Agent-Task Matrix

```mermaid
graph TD
    RA[Research Analyst] --- RT[Research Task]
    FA[Financial Analyst] --- FT[Financial Analysis Task]
    FA --- ST[SEC Filings Analysis Task]
    IA[Investment Advisor] --- RCT[Recommend Task]
    
    subgraph "Information Flow"
        RT --> FT --> ST --> RCT
    end
```

### Trip Planner Agent-Task Matrix

```mermaid
graph TD
    CSE[City Selection Expert] --- IT[Identify Task]
    LE[Local Expert] --- GT[Gather Task]
    TC[Travel Concierge] --- PT[Plan Task]
    
    subgraph "Information Flow"
        IT --> GT --> PT
    end
```

## Data Flow Architecture

```mermaid
flowchart LR
    User[User] -->|Input| UI[CLI Interface]
    UI -->|Query| Agents
    
    subgraph "CrewAI Framework"
        Agents -->|Execute| Tasks
        Tasks -->|Use| Tools
    end
    
    subgraph "External Services"
        Tools -->|Request| APIs[APIs & Data Sources]
        APIs -->|Response| Tools
    end
    
    Tools -->|Results| Tasks
    Tasks -->|Output| Agents
    Agents -->|Final Result| UI
    UI -->|Formatted Response| User
``` 